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

## 当前报告

- `main.tex` 包含封面、版式和报告入口。
- `pages/two_routes.tex` 包含摘要、引言、数据、研究设计、实证结果、结论和参考文献。
- `figures/two-routes.png` 为两条路线的共同窗口净值和回撤图。
- `WHUExperiment.cls` 为武汉大学实验报告模板类文件，封面按经管学院课程报告调整。
- `texmf/` 保存编译需要的补充宏包。

配套计算文档在 `../R/程序/墨基尔_两条路线复现与延展.Rmd`。此前四路径报告的章节和图表仍可在模板目录及 Git 历史中查阅。
