# 李斌大作业 LaTeX 模板

武汉大学经济与管理学院研究生课程研究报告模板，按《公司金融案例分析》LaTeX 模板的封面和版式搭建，课程为“金融数据分析”。

## 编译

在 VS Code 中打开本目录，打开 `main.tex`，按 **⌘S** 自动编译；按 **⌥⌘V** 预览 PDF。PDF 输出在 `build/main.pdf`。

如果 PDF 预览空白或提示找不到文件，说明预览标签还指向旧路径：先关闭该预览标签，再按 **⌥⌘V** 重新打开即可。

终端编译：

```sh
/Library/TeX/texbin/latexmk -xelatex -synctex=1 -interaction=nonstopmode -file-line-error -halt-on-error -outdir=build main.tex
```

中文字体使用 TeX Live 自带的 Fandol；`texmf/` 是模板缺少的补充宏包，移动项目时请保留整个目录。

## 目录结构

- `main.tex`：封面信息、文档设置、各章入口。
- `pages/abstract.tex`：摘要与关键词。
- `pages/ch01.tex`—`ch10.tex`：正文十章。
- `pages/references.tex`：参考文献。
- `pages/appendix.tex`：附录 A—D。
- `figures/fig01.png`—`fig16.png`：正文与附录图片。
- `WHUExperiment.cls`：武汉大学实验报告模板类文件（封面已按经管学院课程报告调整）。

## 修改位置

1. 课程、题目、专业、学号、姓名、日期在 `main.tex` 开头。
2. 正文直接修改 `pages/ch*.tex`；标题层级使用 `\chapter`、`\section`、`\subsection`。
3. 图片放在 `figures/`，在正文中用 `\includegraphics[width=\linewidth]{figXX}` 引用。
4. 表格使用 `tabularx` + `booktabs` 三线表；表题在表格上方，图题在图下方。

## 当前正文来源

`pages/` 中的正文、表格和图片已按 `../申万大师/研究报告.docx` 的内容转换为 LaTeX，便于直接修改。若要改为空白模板，保留 `main.tex`、`WHUExperiment.cls`、`texmf/` 和 `pages/abstract.tex`，清空或替换 `pages/ch*.tex` 即可。
