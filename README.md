# Hui Yao — Academic homepage

个人主页网址：https://huiyao-amber.github.io/

仓库地址：https://github.com/HuiYao-Amber/HuiYao-Amber.github.io

## 文件和网址之间的关系

仓库用来保存网页源文件；GitHub Pages 将指定分支、指定目录中的网页发布成网站。访问网站根网址时，浏览器读取 `index.html`。仓库的 README 是给 GitHub 上的访客看的说明，不是个人主页。

`main` 和 `gh-pages` 都只是分支名。实际发布来源由仓库 Settings → Pages 决定，不能只看默认分支。原主页文件位于 `gh-pages`；要采用此版本，可将此修改合并到 `gh-pages`，并核实 Pages 设置为 Deploy from a branch → gh-pages → /(root)。如果当前使用 GitHub Actions 发布，需检查工作流的来源，不要盲目切换设置。

## 如何更新内容

1. 修改 `index.Rmd` 中的简介、研究和经历。
2. 在 RStudio 终端从仓库根目录运行 `Rscript render.R`。需要 `rmarkdown` 和 Pandoc；RStudio 通常附带 Pandoc。
3. 在浏览器检查生成的 `index.html`。
4. 将源文件和新生成的 `index.html` 一起提交到发布分支。

此版本使用 Pandoc 和轻量 HTML 模板。不要再使用旧的 `postcards::trestles` Knit 流程，它会覆盖新布局。布局在 `template.html` 中，样式在 `style.css` 中。照片仍使用已有的 `HuiYao.jpg`。无需 npm、数据库或服务器代码。

## 提高搜索可发现性

网站上线不等于已被搜索引擎收录，收录也不等于搜索姓名时排名靠前。此版本增加描述性标题、页面简介、canonical、人物结构化数据、robots.txt 和 sitemap.xml；这些帮助理解和发现页面，但不保证收录或排名。没有 robots.txt 本身也不会阻止收录。

发布后，在 Google Search Console 添加 URL-prefix 资源 `https://huiyao-amber.github.io/`，用 Google 给出的 HTML 文件或 meta 标签完成验证。通过网址检查查看主页收录状态，并请求编入索引；提交 `sitemap.xml`。验证代码必须使用 Google 为你实际提供的值。

在 GitHub 个人资料、LinkedIn 和可维护的学校/实验室个人介绍中填写主页链接，也能帮助访客和搜索引擎发现它。

## 内容依据

学术内容来自本次工作区中的 Hui Yao CV，日期以该简历为准。原主页和简历对部分经历的起止月份不同，新版采用简历日期。尚无正式发表论文列在该简历中，因此这里保留 Research 和 “Manuscript in preparation”，不将其标注为已发表论文。

官方说明：
- https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site
- https://developers.google.com/search/docs/fundamentals/seo-starter-guide
- https://developers.google.com/search/docs/crawling-indexing/ask-google-to-recrawl
