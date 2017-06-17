---
layout: post
title: Miscellaneous topics not covered in the CQuIC summer workshop
tags: git matlab Jupyter scientific-computing
categories: work-efficiency
---
***This post is a part of the [2017 CQuIC computing summer workshop tutorial materials](https://cquic.github.io/summer17-computing-workshop/) with audio records available.***

When designing the CQuIC summer 2017 IT workshop, we as the organizers have the following in mind:

- Only teach some basic scientific computing skills that we think are crucial for students to be ready for doing research projects using current IT techniques.
- Instructors will only teach what they are familiar and comfortable with, and we focus on using one programming language for numerical and algebra calculations.
- Let students work on their own, and instructors should never touch students' keyboards.

Obviously, we are also missing some maybe important points given the situation above. Please comment below so that I can on behalf of other instructors to collect and answer your questions.

## Practical suggestions on using Matlab:

- About visualization:
  The default color map in recent Matlab versions are pretty good already, but the common mistakes in making plots with Matlab is mostly on fontsize and curve thickness and so on. Therefore, it might be good to learn to use the following functions and parameters:
  - put `'linewidth',2` or similar definition when you call the `plot` functions.
  - use `set(gca,'fontsize',16)` or similar to uniformally define the fontsize of your axis label and titles.
  - learn to use tools like [matlab2tikz](https://github.com/matlab2tikz/matlab2tikz) to export figures into LaTeX supported TikZ code and the like. This makes it easy to unify fonts in the plots and the main text ready for publications.

- About parallel computing:
  The default `parfor` function is pretty good on handling up-to-12-core parallel computing jobs. If you encounter "lose of connection to workers" error, you may want to set `'SpmdEnabled'` to `false` when you define the parpool.


## Other tips on using Jupyter notebook

- You can use other languages in Jupyter notebook--beside Python and include Matlab. As a fact, the word ***Jupyter*** comes from modern programming languages including [Julia](https://julialang.org), Python and [R](https://www.r-project.org). You can define the kernel by selecting the kernel you need under the `kernel` menu after installing the necessary kernel packages. The full list of community-supported kernel can be found [here](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels).
- It is possible to run different languages in one notebook. The easiest way is to execute bash commands to call other language-based commands inside of the notebook. But different kernel define different syntax to do so. One example of running variant languages on a Julia kernel can be found [here](https://github.com/i2000s/simnanophotonics/blob/master/sqwg.ipynb).

## On choosing your daily programming languages

- If you don't mind the commercial nature, Matlab is actually pretty on numerical calculations and better than Python in common scenarios. Python only get some advantage when you want to use a lot of cores to do parallel computing. A good benchmark on those common modern programming languages can be found on the [Julia website](https://julialang.org/) and plotted [here](https://julialang.org/benchmarks/).
- Another note on Matlab is that it also has a powerful [Symbolic Math Toolbox](https://www.mathworks.com/help/symbolic/index.html) and two versions of interactive notebook interfaces--one is the old fashion [notebook based on MuPAD](https://www.mathworks.com/help/symbolic/notebook-interface.html) and the other one is called [Live Editor](https://www.mathworks.com/products/matlab/live-editor.html). Both are similar to Jupyter notebook and Mathematica.
- If you collaborate with other people, it would be the best to use the common language that you and your collaborators are all familiar with.
- Once you've mastered one programming language, try something new and use languages for what they are good for.

## Things might be touched in doing the followup projects
- Unit tests and other test techniques in various languages.
    - For Matlab users, there are three types of Unit Test styles--one is [script-based unit tests](https://www.mathworks.com/help/matlab/script-based-unit-tests.html), one is [function-based unit tests](https://www.mathworks.com/help/matlab/function-based-unit-tests.html), and the other one is [class-based unit tests](https://www.mathworks.com/help/matlab/class-based-unit-tests.html) under the [testing framework of Matlab](https://www.mathworks.com/help/matlab/matlab-unit-test-framework.html).
    - For Python users, there is also an [Unit Test Framework for Python 3](https://docs.python.org/3/library/unittest.html) and an [Unit Test Framework for Python 2](https://docs.python.org/2/library/unittest.html).
    - For Julia users, linked is the doc for [Unit Testing](https://docs.julialang.org/en/latest/stdlib/test.html).

- More details on documenting when programming in your preferred languages.
    - For Matlab users, you can write [help documentations](http://www.mathworks.com/help/matlab/matlab_prog/add-help-for-your-program.html) in the code and [display your documentations](http://www.mathworks.com/help/matlab/matlab_prog/display-custom-documentation.html) as an interactive Live Script or HTML page.
    - For Python users, [documenting](https://docs.python.org/devguide/documenting.html) can be done using [Sphinx](http://www.sphinx-doc.org/en/stable/) and exporting to LaTeX, HTML, PDF and other formats or hosting on [readthedocs.org](http://readthedocs.org/) website.
    - For Julia users, you can find the [documentation](https://docs.julialang.org/en/stable/manual/documentation/) guidelines and the [Julia-Sphinx](http://bastikr.github.io/sphinx-julia/) and [JuliaDoc](https://github.com/JuliaLang/JuliaDoc) extensions for various styles of documenting and uploading docs to [readthedocs.org](http://readthedocs.org). One example of programming in Julia can be found [here](http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/). 

- Continuous integration (like [travis-CI](https://travis-ci.org)) and virtualizations to automate some testing and migrating tasks.
- Permanent storage and generating DOIs for your code and data.
