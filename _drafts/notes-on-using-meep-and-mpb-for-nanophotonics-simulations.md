---
title: Notes on using MEEP and MPB for nanophotonics simulations
layout: post
category: tools
tags:
  - meep
  - mpb
  - nanophotonics
---

MEEP:
====
It is an open-source software and a [flexible tool](http://web.ics.purdue.edu/~pbermel/pdf/Farjadpour09.pdf) for simulating electromagnetic wave propagation from a source using the FDTD method.
MEEP is written in Guile, the GNU scripting and extensibility language, which is a free implementation of Scheme.
Scheme
The scripting interface is based on the Control Language Library or [libctl](http://ab-initio.mit.edu/wiki/index.php/The_libctl_Manual) and code files usually end with `.ctl`.
The scripting language is designed to be well structured and flexible for input files.
Parameters can be set up with syntax `(define * *)` or `(define-param * *)`, lattice k-point settings can be initialized by `(set! k-point (*) )` for the band-structure, and simulations can be set up and started by `(run *)`.
Parameters can also be updated for each run of a particular file in the formation of *program* *var=value* *ctl-file*.
The script can also be used in an [interactive fashion](http://ab-initio.mit.edu/wiki/index.php/Libctl_Advanced_User_Experience), and scripts end with `(exit)`.
The data is stored in [h5utils](http://ab-initio.mit.edu/wiki/index.php/H5utils) formation and can be visualized in many programs.
A tutorial of using MEEP can be found in its [official website](http://ab-initio.mit.edu/wiki/index.php/Meep_Tutorial).

Python-meep:
===========
To install MEEP, Harminv and their dependencies followed by the Python-MEEP interface, I used [this script](https://github.com/FilipDominec/python-meep-install).
Utilities and examples can be found on [Filip Dominec's repo](https://github.com/FilipDominec/python-meep-utils).
Some notes with MEEP v1.2 can be found on [Filip Dominec's website](http://f.dominec.eu/meep/).


Codes for simulation wave propagation in rectangular or similar waveguides using MEEP:
=====================================================================================
From MEEP user mailing list: [this one](https://www.mail-archive.com/meep-discuss@ab-initio.mit.edu/msg03971.html) and [this one](https://www.mail-archive.com/meep-discuss@ab-initio.mit.edu/msg04724.html).
A similar waveguide code with Mathematica connection for visualizing the plots can be found [here](http://isblokken.dk/wiki/doku.php/note/201210_3d_waveguide_model).
A MEEP kit is [here](http://rf.helpingcreate.com/cgi-bin/meep.pl?page_name=examples).

MPB:
====
[Official website](http://ab-initio.mit.edu/mpb/).
[One example](http://nbviewer.jupyter.org/url/math.mit.edu/~stevenj/18.369/MPB-demo.ipynb) of running MPB script from IJulia/Jupyter notebook can be found on Steven Johnson's [Mathematical Methods in Nanophotonics course website](http://math.mit.edu/~stevenj/18.369/).
