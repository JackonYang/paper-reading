import time
import requests

import happybase
import Hbase_thrift


connection = happybase.Connection('127.0.0.1')

zhihu_article_table = 'zhihu_article'

try:
    connection.create_table(
        zhihu_article_table,
        {
            'rsp': dict(max_versions=5),
            'meta': dict(max_versions=10, block_cache_enabled=False),
            'social': dict(max_versions=10),
            'nlp': dict(),  # use defaults
        }
    )
except Hbase_thrift.AlreadyExists:
    pass

table = connection.table(zhihu_article_table)


def is_downloaded(recent=4):
    return False


def requests_topics(topic_id):
    for after_id in range(0, 1000, 5):
        print('downloading page %s' % after_id)

        if not is_downloaded():
            try:
                rsp_json = iter_request_topics(topic_id, after_id)

                data = rsp_json['data']
                if len(data) == 0:  # stop
                    break

                for article in data:
                    article = article['target']
                    # keys: 'updated', 'author', 'is_labeled', 'excerpt', 'excerpt_title', 'id', 'voteup_count', 'created', 'url', 'title', 'content', 'comment_count', 'topic_thumbnails', 'type'  # noqa E501

                    article_id = article['id']
                    hbase_data = {b'rsp:%s' % k.encode(): str(v).encode() for k, v in article.items()}

                    row_key = b'zhihu-article-%d' % article_id
                    table.put(row_key, hbase_data)
            except Exception as e:
                print(e)
                print('error. topic %s. page_no: %s' % (topic_id, after_id))

            time.sleep(1)


def iter_request_topics(topic_id, after_id):
    # topic api
    # GET https://www.zhihu.com/api/v4/topics/19813032/feeds/top_activity
    response = requests.get(
        url="https://www.zhihu.com/api/v4/topics/%s/feeds/top_activity" % topic_id,
        params={
            "include": "data[?(target.type=topic_sticky_module)].target.data[?(target.type=answer)].target.content,relationship.is_authorized,is_author,voting,is_thanked,is_nothelp;data[?(target.type=topic_sticky_module)].target.data[?(target.type=answer)].target.is_normal,comment_count,voteup_count,content,relevant_info,excerpt.author.badge[?(type=best_answerer)].topics;data[?(target.type=topic_sticky_module)].target.data[?(target.type=article)].target.content,voteup_count,comment_count,voting,author.badge[?(type=best_answerer)].topics;data[?(target.type=topic_sticky_module)].target.data[?(target.type=people)].target.answer_count,articles_count,gender,follower_count,is_followed,is_following,badge[?(type=best_answerer)].topics;data[?(target.type=answer)].target.annotation_detail,content,hermes_label,is_labeled,relationship.is_authorized,is_author,voting,is_thanked,is_nothelp;data[?(target.type=answer)].target.author.badge[?(type=best_answerer)].topics;data[?(target.type=article)].target.annotation_detail,content,hermes_label,is_labeled,author.badge[?(type=best_answerer)].topics;data[?(target.type=question)].target.annotation_detail,comment_count;",  # noqa: E501
            "limit": "5",
            "after_id": "%d.00000" % after_id,
        },
        headers={
            "Authority": "www.zhihu.com",
            "Pragma": "no-cache",
            "Cache-Control": "no-cache",
            "X-Ab-Param": "ug_follow_answerer_0=0;top_ydyq=X;tp_qa_metacard=1;pf_noti_entry_num=0;tp_club_qa=1;li_yxzl_new_style_a=1;li_ebok_chap=0;se_webmajorob=0;pf_foltopic_usernum=0;ug_zero_follow=0;se_new_topic=0;se_whitelist=1;se_time_threshold=0;li_paid_answer_exp=0;se_timebox_up=0;se_colorfultab=1;se_featured=1;soc_yxzl_zcfw=0;li_education_box=1;zr_km_sku_mix=sku_20;se_pek_test2=1;se_websearch=3;li_svip_tab_search=1;li_ebook_audio=1;se_col_boost=1;top_test_4_liguangyi=1;se_pek_test=1;tp_club_join=1;soc_iospinweight=0;ls_fmp4=0;li_hot_voted=0;li_se_section=1;zw_payc_qaedit=0;se_college_cm=1;tp_club_android_feed=old;ug_fw_answ_aut_1=0;qap_payc_invite=0;se_topiclabel=1;se_amovietab=1;se_sug=1;se_sug_entrance=1;se_topicfeed=0;top_ebook=0;se_bert_comp=0;se_college=default;top_quality=0;se_member_rescore=1;se_cbert_ab=1;tp_club_pk=1;tp_topic_head=0;li_se_media_icon=1;li_tjys_ec_ab=0;zr_rel_search=base;se_entity_model_14=0;tp_qa_toast=1;tp_sticky_android=2;tp_club_android_join=1;ug_newtag=1;li_se_across=1;se_cbert=1;se_famous=1;se_presearch_ab=0;ls_recommend_test=1;li_hot_score_ab=0;li_sku_bottom_bar_re=0;tp_meta_card=0;tp_sft=a;se_ad_index=10;soc_update=0;soc_leave_recommend=2;zw_sameq_sorce=999;zr_training_all_item=false;zr_training_queue=false;tsp_hotlist_ui=3;pf_newguide_vertical=0;li_android_vip=0;li_video_section=1;se_payconsult=5;soc_brdcst3=0;li_answer_right=0;se_cardrank_4=1;soc_newfeed=2;ls_zvideo_license=1;zr_training_prerank=0;tp_topic_rec=1;tp_sft_v2=d;zr_se_new_xgb=1;se_click_club=3;se_suggest_cache=0;se_hotmore=2;li_catalog_card=1;li_se_heat=1;zr_art_rec=base;se_hot_timebox=1;se_subtext=1;se_lottery=0;soc_iosreadfilter=0;li_qa_cover=old;qap_question_visitor= 0;zr_km_feed_nlp=old;zr_km_training_boost=false;top_root=0;li_search_v5=1;se_preset_label=1;se_backsearch=1;zr_km_style=base;se_movietab=1;se_use_zitem=0;se_pek_test3=1;se_site_onebox=0;se_related_index=3;se_ctx_rerank=1;se_hotsearch_2=1;sem_up_growth=in_app;zr_expslotpaid=9;tp_qa_metacard_top=top;soc_userrec=0;li_vip_no_ad_mon=0;se_zu_onebox=0;top_new_feed=5;se_webrs=1;se_waterfall=0;li_answer_label=0;li_answers_link=0;zr_km_answer=open_cvr;zr_search_sim=0;zr_km_slot_style=event_card;se_agency= 0;tp_topic_entry=0;se_search_feed=N;tp_club_qa_pic=1;tp_m_intro_re_topic=1;tp_topic_style=0;tsp_vote=2;li_pay_banner_type=6;zr_slotpaidexp=8;tp_club_tab_feed=0;li_qa_new_cover=1;se_relationship=0;se_hotsearch=1;soc_authormore=2;se_likebutton=0;ug_goodcomment_0=1;qap_thanks=1;se_cardrank_2=1;tp_topic_tab_new=0-0-0;soc_zcfw_broadcast=0;soc_bigone=1;li_vip_lr=1;se_webtimebox=1;soc_wonderuser_recom=2;soc_ri_merge=0;se_preset_tech=0;soc_adsort=0;soc_authormore2=2;qap_ques_invite=0;zr_video_rank=new_rank;se_prf=0;tsp_videobillboard=1;zr_article_new=open;se_rel_search=1;soc_cardheight=2;soc_zcfw_shipinshiti=1;ug_follow_topic_1=2;ls_videoad=2;li_salt_hot=1;zr_km_sku_thres=false;soc_bignew=1;ug_follow_answerer=0;se_entity_model=1;se_cardrank_1=0;tp_club_tab=0;soc_adpinweight=0;li_album_liutongab=0;li_answer_card=0;zr_intervene=0;soc_iosintimacy=2;soc_zcfw_broadcast2=1;top_v_album=1;li_qa_btn_text=0;se_expired_ob=0;soc_iosreadline=0;tp_discover=0;pf_fuceng=1;se_ios_spb309=1;se_zu_recommend=0;soc_adreadfilter=0;top_hotcommerce=1;soc_brdcst4=3;pf_creator_card=1;zr_answer_rec_cp=open;soc_adreadline=0;soc_feed_intimacy=2;tp_club_pic=0.6;tp_club_pic_swiper=1;soc_special=0;qap_question_author=0;zr_test_aa1=0;se_ltr_dnn_cp=0;se_new_merger=1;soc_zuichangfangwen=0;li_se_edu=1;se_relation_1=1;se_aa_base=0;se_wannasearch=a;zr_update_merge_size=1;ls_zvideo_rec=2;zr_rec_answer_cp=close;se_club_post=5;se_p_slideshow=1;li_assessment_show=1;qap_article_like=1;zr_slot_training=2;se_mobileweb=1;tp_club_header=1;zr_ans_rec=gbrank;se_multianswer=0;tp_score_1=a;li_purchase_test=0;se_hotsearch_num=0;top_universalebook=1;li_query_match=1;zr_video_rank_nn=new_rank;soc_stickypush=1;zr_training_first=false;se_auto_syn=0;tp_topic_tab=0;zr_slot_cold_start=aver;zr_video_recall=current_recall;tp_club_feed=1;se_cardrank_3=0;soc_zcfw_badcase=0;se_adxtest=1;tp_header_style=1;soc_iossort=0;soc_notification=1;ug_zero_follow_0=0;se_spb309=0;se_cate_l3=0;se_ltr_cp_new=0;se_billboardsearch=0",  # noqa: E501
            "Sec-Fetch-Dest": "empty",
            "X-Requested-With": "fetch",
            "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36",
            "Dnt": "1",
            "Accept": "*/*",
            "Sec-Fetch-Site": "same-origin",
            "Sec-Fetch-Mode": "cors",
            "Referer": "https://www.zhihu.com/topic/19813032/hot",
            "Accept-Language": "zh,zh-CN;q=0.9,en;q=0.8,en-US;q=0.7,zh-TW;q=0.6,fr;q=0.5",
            "Accept-Encoding": "gzip",
        },
    )
    return response.json()


if __name__ == '__main__':
    requests_topics('19813032')  # 深度学习
