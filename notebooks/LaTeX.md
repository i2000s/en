---
layout: default
title: Notes on LaTeX
---
# Advanced LaTeX commands and packages
## Commands and packages to organize large documents
1. `\input{}` and `\include{}`:
  Both allow including external tex files into the current file. `\input` doesn't start from a new page, but `\include` does; `\include` allow nested file including while `\input` doesn't.

2. `\import{<directory>}{<filename>}` and `\subimport{}{}`:
  Similar to `\input`, but allows compiling the external files in their own directory. See [document](ftp://sunsite.icm.edu.pl/pub/CTAN/macros/latex/contrib/import/import.pdf).

3. The `standalone` package:
  Once `\usepackage{standalone}` or `\RequiredPackage{standalone}` is used, the included external files can be a complete LaTeX file. Otherwise, the external files should be code fractions in most cases. Note that, when standalone package is used, the included sub-document will use the preamble from the main document instead. See [here](https://tex.stackexchange.com/questions/11311/how-to-include-a-document-into-another-document) for more information.

4. The `CatchFilesBetweenTags` package:
  This package allows to include external code fractions enclosed inside of a pair of `tag` (can be any words) in the format of `%<*tag>` and `%</tag>` (`tag` can be any name). The command ` \ExecuteMetaData[path/to/file]{tag}` is commonly used to execute/expand tagged code into the current document. See [this example](https://texblog.org/2012/12/04/keeping-things-organized-in-large-documents/). It might have problems due to conflicts with other packages or settings. For example, see [here for LuaTeX compiling](https://tex.stackexchange.com/questions/234585/workaround-to-make-catchbetweenfiletags-work-with-lualatex) and [here for endline characters](https://tex.stackexchange.com/questions/164074/why-does-executemetadata-break-my-paragraphs/164163#164163).

    When using these packages, you might encounter some errors, which otherwise may not occur. Here are some and the corresponding solutions.
    + Error "Too many math alphabets in math normal". Put the following lines before using the `bm` and/or `bbm` or other font packages if used (see [here](https://tex.stackexchange.com/questions/3676/too-many-math-alphabets-error)):
    ```
    \newcommand\hmmax{0}
    \newcommand\bmmax{0}
    \usepackage{bm}
    \usepackage{bbm}
    ```
    + The authors of `CatchFilesBetweenTags` decided to issue `\endlinechar=-1`, which causes the linebreaks vanish. The following codes is a workaround from tex.stackexchange article "\input only part of a file using catchfilebetweentags package."
    ```
    \makeatletter
    \def\CatchFBT@Fin@l#1[#2]{
       \begingroup
          %\endlinechar\m@ne % <- this is the guilty party
          \makeatletter #2%
          \scantokens\expandafter{
             \expandafter\CatchFBT@tok\expandafter{\the\CatchFBT@tok}}
          \CatchFBT@IsAToken{#1}
             {\global#1\expandafter{\the\CatchFBT@tok}}
             {\xdef#1{\the\CatchFBT@tok}}%
          \ifx\CatchFBT@tok#1\else\global\CatchFBT@tok{}\fi
       \endgroup
    }% \CatchFBT@Final
    \makeatother
    ```

## Tips on using the makeindex package (`imakeidx`)
1. For index word started with a special character (like accents or math symbols), use `\index{example@\'example}` syntax to format the real word after the `@` symbol.

2. Subentries can be nestled using the `!` symbol. For example, `\index{main!sub}`.

3. Cross-referencing may be defined using the `|` symbol. For example, `\index{bird|see {flying animal}}`.

4. If the `hyperref` package is included at the end of the preamble, indexed works will be hyperlinked to the page. Otherwise, no hyperlinks to the page numbers.

5. It may cause conflicts if the `\index` is used twice after the same word. The error message may be `use of \@index doesn't match its definition`.


## Formatting tricks
+ Use `\hfill`, `\vfill`, `\hspace{<length>}` and `vspace{<length>}` to insert blank spaces in horizontal (h) and vertical (v) directions. `\vskip <length>` and `\hskip <length>` can also be used for similar effects.

## Handling figures
### On placing figures in place
1. Use `\begin{figure}[!tbp] ... \end{figure}` environment to fix the position of figures as in the tex. The `[h]` (here) position option might generate some problems, which will push figures to the end of a chapter or before a new page break.

2. If the `float` package and command is used, the `placeins` package might be helpful to place the float figures at a more controllable manner. Otherwise, the float figures might go to the end of the document or chapter. The following code, for instance, will fix the placement of figures to corresponding subsections level. See [reference here](https://tex.stackexchange.com/questions/118662/use-placeins-for-subsections).
```
\usepackage{placeins}
\makeatletter
\AtBeginDocument{
  \expandafter\renewcommand\expandafter\subsection\expandafter
    {\expandafter\@fb@secFB\subsection}%
  \newcommand\@fb@secFB{\FloatBarrier
    \gdef\@fb@afterHHook{\@fb@topbarrier \gdef\@fb@afterHHook{}}}%
  \g@addto@macro\@afterheading{\@fb@afterHHook}%
  \gdef\@fb@afterHHook{}%
}
\makeatother
```
Then place `\FloatBarrier` to where the bottom line of allowed floating for figures before in TeX.

## Tips on using TikZ and PGFplots
+ To not use the `,` separation delimits and use the usual digit decimal `.` sign, put the following code after `\usepackage{tikz,pgfplots}`:
```
\pgfplotsset{
  compat=1.8, % Which version of pgfplots do we want to use?
  legend style =
  {font=\small\sffamily},
  label style = {font=\small\sffamily},
  xticklabel style={/pgf/number format/.cd, 1000 sep={}}
  }
```
Of course, a few other commonly used options are included above.

+ To precompile TikZ pictures into PDF files for the first run, use
```
\usetikzlibrary{external} \tikzset{external/system call={lualatex
    \tikzexternalcheckshellescape -halt-on-error -interaction=batchmode -jobname "\image" "\texsource"}}
\tikzexternalize[prefix=fig/autofig/]
```
This will call LuaLaTeX to compile the TeX file and put compiled TikZ figures into the `fig/autofig` directory.
