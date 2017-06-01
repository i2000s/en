---
layout: post
title: Miscellaneous topics not covered in the CQuIC summer workshop
tags: git matlab jupyter scientific-computing
categories: work-efficiency
---
***Work In Progress! This post is part of the [2017 CQuIC computing summer workshop tutorial materials](https://cquic.github.io/summer17-computing-workshop/).***

When designing the CQuIC summer 2017 IT workshop, we as the organizers have the following in mind:

- Only teach some basic scientific computing skills that we think are crucial for student to be ready for doing research projects using modern IT techniques.
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

## On select and use programming languages

- If you don't mind the commercial nature, Matlab is actually pretty on numerical calculations and better than Python in common scenarios. Python only get some advantage when you want to use a lot of cores to do parallel computing. A good benchmark on those common modern programming languages can be found on the [Julia website](https://julialang.org/) and plotted [here](https://julialang.org/benchmarks/).

## Things might be touched in doing the followup projects
- Unit tests and other test techniques in various languages.
- More details on documentations.
- Continuous integration (like [travis-CI](https://travis-ci.org)) and virtualizations.
- Permanent storage and generating DOIs for your code and data.
