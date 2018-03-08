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
  This package allows to include external code fractions enclosed inside of a pair of `tag` (can be any words) in the format of `%<*tag>` and `%</tag>`. The command ` \ExecuteMetaData[path/to/file]{tag}` is commonly used to execute/expand tagged code into the current document. See [this example](https://texblog.org/2012/12/04/keeping-things-organized-in-large-documents/). It might have problems due to conflicts with other packages or settings. For example, see [here for LuaTeX compiling](https://tex.stackexchange.com/questions/234585/workaround-to-make-catchbetweenfiletags-work-with-lualatex) and [here for endline characters](https://tex.stackexchange.com/questions/164074/why-does-executemetadata-break-my-paragraphs/164163#164163).

## Tips on using the makeindex package (`imakeidx`)
1. For index word started with a special character (like accents or math symbols), use `\index{example@\'example}` syntax to format the real word after the `@` symbol.

2. Subentries can be nestled using the `!` symbol. For example, `\index{main!sub}`.

3. Cross-referencing may be defined using the `|` symbol. For example, `\index{bird|see {flying animal}}`.

4. If the `hyperref` package is included at the end of the preamble, indexed works will be hyperlinked to the page. Otherwise, no hyperlinks to the page numbers.

5. It may cause conflicts if the `\index` is used twice after the same word. The error message may be `use of \@index doesn't match its definition`.


## Formatting tricks
+ Use `\hfill`, `\vfill`, `\hspace{<length>}` and `vspace{<length>}` to insert blank spaces in horizontal (h) and vertical (v) directions. `\vskip <length>` and `\hskip <length>` can also be used for similar effects.
