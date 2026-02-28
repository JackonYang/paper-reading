clear
clc
y=1:1:10;
x=10:-1:1;
plot(y)  % 第一图像
hold on  % 图形保持
plot(x,y)  % 第二图像
title('name of tilte')  % 标题
xlabel('label x')  % x 轴
ylabel('label y')  % y 轴
legend('no x','has x')  % 图像的标注，按照做图的顺序，依次标注，不能多或少，不能混淆顺序。
text(2,2,'special spot')  % 在 (2,2) 点加标注
text(5.5,5.5,' \leftarrow VIP spot')  % 在（5.5，5.5)点加标注。
            % 其中，注释中的\leftarrow 是一个转义字符，类似 c 语言的 \n
print(gcf,'-dpng','plot_detail.png') % 保存当前图像， png 格式，名字是 plot_detail.png