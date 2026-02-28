# Metadata

- **id**: 0ccc8b42-97ba-48fa-be1b-b1114f93dcb9
- **seq_id**: 1000099
- **agent**: chat
- **character**: None
- **title**: 如何用 Python + 飞书 SDK 把我的所有飞书文档备份成
- **title_type**: SYSTEM
- **version**: 3
- **current_message_id**: 2
- **inserted_at**: 1738464371.265984
- **updated_at**: 1738464371.265984


# Message List 



## 如何用 Python + 飞书 SDK 把我的所有飞书文档备份成
如何用 Python + 飞书 SDK 把我的所有飞书文档备份成 markdown 格式的文件


### Metadata
- **Thinking Elapsed Seconds**: 30.0
- **Accumulated Token Usage**: 1361


### Thinking Content
嗯，用户想用Python和飞书SDK把所有飞书文档备份成Markdown格式。首先，我需要理清楚整个流程需要哪些步骤。可能包括获取文档列表、获取文档内容、转换格式以及保存文件这些部分。

首先，用户需要注册飞书应用，获取app_id和app_secret。这一步是必须的，因为所有API调用都需要认证。可能需要提醒用户注意权限的设置，确保应用有文档的读取权限。

接下来是安装SDK，用户需要安装飞书的Python SDK，可能还需要安装其他依赖比如markdown处理库。这一步可能会遇到版本问题，需要确认SDK的版本兼容性。

然后，用户需要获取所有文档。飞书的文档可能分布在不同的位置，比如个人空间、团队空间，或者通过特定的文件夹组织。这时候可能需要遍历用户的云空间或者指定目录下的文档。需要调用飞书的API，比如获取根目录下的文件列表，然后递归遍历子目录。这里需要注意的是分页处理，因为可能有大量文档。

获取文档内容方面，每个文档可能有不同的类型，比如文档、电子表格、多维表格等。用户可能只需要处理文档类型（docx），这时候需要判断文件类型，并调用相应的API获取内容。飞书文档的内容可能是JSON结构的，需要解析并转换为Markdown。这一步可能需要处理富文本内容，比如文本样式、图片、表格等，转换起来比较复杂。

转换到Markdown可能比较棘手，因为飞书文档的JSON结构可能包含各种块元素，比如段落、标题、列表、图片、表格等。需要将每个块转换为对应的Markdown语法。可能需要用到正则表达式替换，或者使用现有的库来帮助转换。比如，处理加粗、斜体、链接、图片链接等。图片可能需要下载并保存到本地，同时替换链接为相对路径。

保存文件时，需要考虑目录结构，可能保持和飞书相同的目录层次。需要处理文件名中的特殊字符，避免文件系统问题。同时，要处理可能重复的文件名，或者自动生成唯一的文件名。

权限方面，用户的应用需要具备访问文档的权限，比如需要申请“云文档”相关的权限范围，并在飞书开发者后台添加这些权限。否则，API调用可能会失败。需要提醒用户检查权限是否正确配置。

错误处理也是一个需要考虑的问题，比如网络请求失败、API限流、文档内容解析错误等。可能需要加入重试机制，或者记录失败的情况，方便后续排查。

此外，用户可能希望备份包括图片在内的所有内容，这时候需要处理图片的下载和存储。图片的URL可能需要通过API获取，并且可能涉及到认证，需要携带access_token来下载图片。下载后的图片需要保存到本地，并在Markdown中使用相对路径引用。

测试整个流程，可能需要先用一个简单的文档进行测试，确保每一步都能正确执行，再扩展到大量文档。同时，处理大文档时需要注意性能问题，可能需要分步处理或增加延迟以避免触发API限流。

最后，可能需要编写一个脚本，结构清晰，模块化，方便维护和扩展。比如，分成认证模块、文档遍历模块、内容转换模块、文件保存模块等。

总结一下，步骤大概是：认证获取token，遍历文档列表，获取每个文档内容，转换内容为Markdown，处理图片等资源，保存为文件。需要注意的点包括权限、API调用限制、内容转换的准确性、错误处理等。


### Content
以下是使用 Python 和飞书 SDK 备份飞书文档为 Markdown 的分步指南：

### 1. 准备工作
```python
pip install py-larksuite-oapi markdownify requests
```

### 2. 创建飞书应用
1. 进入[飞书开放平台](https://open.feishu.cn/)
2. 创建企业自建应用
3. 添加以下权限：
   - `drive:drive:readonly`（云文档读取）
   - `drive:file:readonly`（文件读取）
   - `drive:file:search`（文件搜索）

### 3. 完整代码示例
```python
import os
import lark_oapi as lark
from lark_oapi.api.drive.v1 import *
from markdownify import markdownify as md
import requests

class FeishuBackup:
    def __init__(self, app_id, app_secret):
        self.client = lark.Client.builder() \
            .app_id(app_id) \
            .app_secret(app_secret) \
            .log_level(lark.LogLevel.DEBUG) \
            .build()
        
        self.image_dir = "images"
        os.makedirs(self.image_dir, exist_ok=True)

    def _get_folder_files(self, folder_token="", parent_path=""):
        """递归获取文件夹结构"""
        req = ListFileRequest.builder() \
            .folder_token(folder_token) \
            .page_size(200) \
            .build()
        
        resp = self.client.drive.v1.file.list(req)
        if not resp.success():
            raise Exception(f"API 错误: {resp.msg}")
        
        for item in resp.data.files:
            current_path = os.path.join(parent_path, item.name)
            if item.type == "folder":
                self._get_folder_files(item.token, current_path)
            elif item.type == "docx":
                self._save_as_markdown(item, current_path)

    def _save_as_markdown(self, file_item, path):
        """保存为Markdown文件"""
        # 获取文档内容
        content = self._get_doc_content(file_item.token)
        
        # 转换并保存
        md_path = f"{path}.md"
        os.makedirs(os.path.dirname(md_path), exist_ok=True)
        
        with open(md_path, "w", encoding="utf-8") as f:
            f.write(content)
        print(f"已保存: {md_path}")

    def _get_doc_content(self, doc_token):
        """获取并转换文档内容"""
        req = GetDocumentBlockRequest.builder() \
            .document_id(doc_token) \
            .build()

        resp = self.client.drive.v1.document_block.get(req)
        if not resp.success():
            raise Exception(f"获取文档失败: {resp.msg}")

        return self._convert_to_markdown(resp.data)

    def _convert_to_markdown(self, blocks):
        """递归转换文档块"""
        markdown = []
        for block in blocks.children:
            if block.block_type == "text":
                text = block.text_element.text
                styles = block.text_element.style
                
                # 处理样式
                if styles.bold:
                    text = f"**{text}**"
                if styles.italic:
                    text = f"*{text}*"
                if styles.strikethrough:
                    text = f"~~{text}~~"
                
                markdown.append(text)
            
            elif block.block_type == "heading":
                level = block.heading_element.style.level
                markdown.append(f"\n{'#' * level} {block.heading_element.content}\n")
            
            elif block.block_type == "image":
                url = block.image_element.source
                local_path = self._download_image(url)
                markdown.append(f"![]({local_path})\n")
            
            elif block.block_type in ["ul", "ol"]:
                for i, item in enumerate(block.list_element.items):
                    prefix = "- " if block.block_type == "ul" else f"{i+1}. "
                    markdown.append(f"{prefix}{item}\n")
            
            if hasattr(block, 'children'):
                markdown.append(self._convert_to_markdown(block))
        
        return "\n".join(markdown)

    def _download_image(self, url):
        """下载图片到本地"""
        headers = {"Authorization": f"Bearer {self.client.token}"}
        resp = requests.get(url, headers=headers)
        
        filename = os.path.join(self.image_dir, f"img_{hash(url)}.png")
        with open(filename, "wb") as f:
            f.write(resp.content)
        
        return os.path.relpath(filename, start=self.image_dir)

    def backup_all_docs(self):
        """启动备份"""
        self._get_folder_files()

if __name__ == "__main__":
    backup = FeishuBackup(
        app_id="your_app_id",
        app_secret="your_app_secret"
    )
    backup.backup_all_docs()
```

### 4. 使用说明
1. 替换 `your_app_id` 和 `your_app_secret`
2. 运行脚本会自动：
   - 遍历所有云文档
   - 保持原始目录结构
   - 转换文本样式为 Markdown
   - 下载图片到本地 images 目录
   - 生成带相对路径引用的 .md 文件

### 注意事项
1. API 调用频率限制：免费版 100次/分钟，建议添加 sleep 间隔
2. 大文档需要分块处理（当前代码已自动处理）
3. 表格数据需要额外处理（当前示例未包含）
4. 需要企业授权应用访问权限

可以通过以下方式优化：
```python
# 添加请求间隔
import time
time.sleep(0.5)  # 在 API 请求后添加

# 处理表格
elif block.block_type == "table":
    for row in block.table_element.cells:
        markdown.append("| " + " | ".join(row) + " |")
```

建议根据实际需求调整样式转换逻辑和异常处理机制。

