---
layout: default
title: Notes on Atom
---
# Problem solving
Since [Atom](https://atom.io) is still not very stable yet, it might crash due to the windows in open during startup.
One quick life-saving trick is to run the program from command line by `atom --clear-window-state`.

# Plugin and tools
To install or update Atom packages, go to `Packages > Settings View > Manage Packages`.

+ For grammar checking, I use `linter-languagetool`. The free [LanguageTool](https://languagetool.org/) has to be installed locally with the multiple-GB N Gram Data package installed on the computer as well. Then in the settings of the package, provide the paths for the installed `languagetool-server.jar` and the N Gram Data.
+ For preview LaTeX equations in markdown using Pandoc render, I use the `markdown-preview-plus` plugin. Pandoc has to be installed on the computer. On the settings of the plugin package, `Pandoc options` was set to `--filter=pandoc-eqnos` in my case for rendering MathML equations for this website code. The keybinding `ctrl+shift+M` should toggle the preview window while `ctrl+shift+X` should run the render.
