---
layout: default
title: Tools
subtitle: Things that make my work easier
---

This is a list of some of the tools that I use on a regular basis that have
come to be an essential part of my workflow.

## Writing papers

I use **LaTeX** for typesetting and [TexStudio](http://texstudio.org/)
as the editor.
References are managed using **Bibtex**.  I also use
[JabRef](http://jabref.org/), which is a simple GUI frontend for
Bibtex reference database.
My major reference database can be found in my [Archive repo](https://github.com/i2000s/Archive).
Ideas with references and notes are organized using [Docear](http://docear.org) in terms of mindmaps.

Most papers and codes are kept in private repositories on
[CQuIC@GitHub](http://cquic-github.github.io) and [Bitbucket](http://bitbucket.org).  My coauthors and I use **Git** to
allow us to work remotely on a paper and merge our changes.
If a coauthor is not comfortable with Git, papers are kept on **Dropbox**.
You can find my notes and tutorial on combining cloud storage service and Git in collaborating on paper writing [here](https://i2000s.github.io/en/2017/05/24/using-git-to-collaborate-with-people-who-dont-use-git.html).

## Reading papers
I keep abreast of the literature using the [QuantumInformation subreddit](https://www.reddit.com/r/QuantumInformation/) and an [arXiv mobile app](https://github.com/jdeslip/arxiv-mobile) to subscribe some journal and preprint articles.
If you prefer to collect various RSS feeds from certain journals and arXiv on a standalone app, [Inoreader](http://www.inoreader.com) (an RSS feed reader) might be a good tool.
I also have a few alerts set up on [Google Scholar](http://scholar.google.com), which I also use for finding specific papers.
See the post on [Searching the Scientific Literature](http://www.davidketcheson.info/2011/10/27/searching-scientific-literature.html).


## Presentations and multimedia
Lately, I write most presentations in **Powerpoint**.  I use
[texpoint](http://texpoint.necula.org/) to typeset equations onto slides.  
[Beamer](https://en.wikipedia.org/wiki/Beamer_(LaTeX)) is also a good friend to generate PDF slides.
For more free-style, my colleagues also use [Prezi](http://prezi.com/), [Browsercast](https://github.com/ReDEnergy/Browsercast) with [Math anywhere plugin](https://github.com/andrusha/mathml-chrome) and a few other editors for presentations.

For drawn diagrams and graphics, I mainly use [Inkscape](https://inkscape.org/).
Inkscape has a builtin LaTeX render for LaTeX-formatted equations.
The [TexText](https://bitbucket.org/pitgarbe/textext) Inkscape plugin can also help write LaTeX equations on Graphics while having an advanced interface to allow customized preambles.
I also use [Illustrator](http://www.adobe.com/products/illustrator.html) to edit graphics if my collaborators prefer.
In case there is a font problem, the [Mac font repository](https://github.com/potyt/fonts) from [Potyt](https://github.com/potyt) might have the missed fonts installed on Mac/Apple devices which many of my collaborators use.
Equations can be put into Illustrator by using [MathMagic Pro](http://www.mathmagic.com/) (not free) or any software that can generate equations in eps or pdf standalone files.

For 3D modeling and animations, I am starting with [Blender](http://www.blender.org/) and have used [Pov-Ray](http://www.povray.org/) before.

My notes:

+ [Notes on Inkscape](/en/notebooks/inkscape.html)
+ [Notes on Adobe Illustrator](/en/notebooks/illustrator.html)

## Code
Most of my coding is done with Matlab because most of collaborators use it and my university--UNM--provides it for free to me as the original home of Matlab.  I also use the following:

 1. The Jupyter notebook (formerly IPython and IJulia notebook). For interactive running and debugging. And for organizing, recording, and
    sharing code with animations and mathematics. It supports multiple programming language kernels.
 2. [Github](http://github.com), [BitBucket](http://bitbucket.com), [GitLab](https://about.gitlab.com/) and [Coding](https://coding.net/).  For collaborative code development.
 3. [Matlab](https://www.mathworks.com/products/matlab.html) is still my main programming language as most of my collaborators do. The program comes with a good UI.
 4. [Eclipse](https://www.eclipse.org/) for C and Java programming IDE. Used for Arduio and others.
 5. [Atom](https://atom.io) for editing files in markdown and all other languages. Julia has a [Juno plugin for Atom](http://junolab.org/), but now I program Julia mostly in the [JuliaPro](https://juliacomputing.com/products/juliapro.html) version with the builtin Juno IDE.
 6. [Vim](http://www.vim.org) for plain programming. [GNU Nano](https://www.nano-editor.org/) is also a simple plain editor without complicated short-keys which I use in Linux.

 Related notes:

 + [My notes on Git](/en/notebooks/git.html)
 + [Notes on Atom](/en/notebooks/atom.html)

## Plotting

[Matlab](http://matlab.com), [Matplotlib](http://matplotlib.org/), [PyPlot.jl (Matplotlib-based)](https://github.com/JuliaPy/PyPlot.jl), [Plots.jl](https://github.com/JuliaPy/PyPlot.jl), [VisClaw](https://github.com/clawpack/visclaw) and a few others.
To prepare high-quality figures for publications, independence of what programming language I use for the calculations, I usually export the minimal sets of data for plotting in Matlab dataset or [HDF5](https://support.hdfgroup.org/HDF5/doc/index.html) formation, and then write a script for plotting.
When Matlab is used for making up the final plots, packages like [matlab2tikz](https://github.com/matlab2tikz/matlab2tikz), [epsclean](https://github.com/Conclusio/matlab-epsclean) and [export_fig](https://github.com/altmany/export_fig) could be helpful to export the figures in Tikz code or eps/pdf formats.
Compared to the 2D Matplotlib-based programs, I find Matlab is particularly good on handling 3D plots if the OpenGL engine works on your computer.
One live example of making plots for one of my publications is [here](https://github.com/CQuIC/FaradaySqueezingProtocol).

If you want to have an interactive interface for people to play around with your data and visualize the result in their preferential language, [plotly](https://plot.ly/) looks promising for that purpose.

For making quantum circuit diagrams, [qcircuit](https://github.com/cquic/qcircuit) developed by CQuIC fellows has been the standard way in LaTeX with [xy-pic](http://www.tug.org/applications/Xy-pic/) and [ifpdf](http://www.ctan.org/pkg/ifpdf) packages.
I also prototyped a package called [qcircuitz](https://github.com/CQuIC/qcircuitz) (suggested by [Dr. Steve Flammia](http://www.physics.usyd.edu.au/~sflammia)) to provide some macros in Tikz for people who prefer to use the powerful [PGF/TikZ package](https://sourceforge.net/projects/pgf/) including [PGFPlots](http://pgfplots.sourceforge.net/) for graphics in LaTeX.
While prototyping the package, I found [qpic](https://github.com/qpic/qpic) is also made on a similar direction yet with a Python interface which looks pretty good.


## Notes and productivity

 1. [OneNote](https://www.onenote.com/) from MicroSoft.
 1. [NValt](http://brettterpstra.com/nvalt-2-2-public-beta/).  For managing
    plain-text notes.
 1. [Omnifocus](http://www.omnigroup.com/products/omnifocus/).  For managing all the non-research stuff I do.
 1. [Gitit](http://gitit.net/).  Wiki software could be useful for
    internal collaboration within a group.

## Websites

 1. [Jekyll](https://github.com/mojombo/jekyll).  For building this website and a few others on GitHub. If you find it useful, feel free to use [my website](https://github.com/i2000s/i2000s.github.io) as a template for your site. It is built on top of [Carl Boettiger's LabNotebook project](https://github.com/cboettig/labnotebook) with customization on citation formats, [travis-CI](http://travis-ci.org/) automation and a few other features.
 2. [Coda](https://panic.com/coda/).  
 3. [Wordpress](http://wordpress.org/). I have participated the development of the [CQuIC website](https://cquic.unm.edu) using Wordpress. In making the CQuIC website, I have customized the [bibtexbrowser](https://github.com/monperrus/bibtexbrowser) toolkit so that it is now compatible with APS citation and common standards widely adapted in the physics society for listing publications on a Wordpress website.

## Computers

Being a quantum information scientist, I have been developing a deep interest in both software and hardware of computers and artificial intelligence.
Sometimes, I also need to do hard computing jobs on nanophotonics and many-body quantum simulations.
So, I run Linux on Lenovo Thinkpads, workstations from my work place, cloud servers and clusters.
The reason I use Thinkpads as my personal computers is mainly because it has a strong traditional Linux community support. Otherwise, running Linux will be extremely painful to handle hardware driver issues and to optimize performance.
Specifically, I run Ubuntu on my personal computers for work.
I also use OneNote on Windows to take notes and synchronize them on OneDrive.
My current working machines include a Thinkpad P50 mobile workstation (CPU i7-6700HQ, GPU M1000M, 64GB RAM) and a Thinkpad Tablet 2 (for notes taking mainly).
I use a 64GB RAM for simulating large quantum systems and for virtual machines to run Windows OS (Windows Insider free preview version) inside of Linux sometimes in case of editing my notes and synchronizing my Youdao wordbook.
In the past or as backups, I also have convenient Thinkpad X61 Tablet (fixed from a trashed one in a low cost and worked like a tank) and X200 Tablet to combine the notes taking, travelers' computer and hard-computing functions in one.

To reduce power consuming and increase battery life using Linux on Thinkpads, I use [TLP](http://linrunner.de/en/tlp/docs/tlp-linux-advanced-power-management.html) on top of [acpi_call](https://github.com/mkottman/acpi_call) (you may want [tp-smapi](http://www.thinkwiki.org/wiki/Tp_smapi) instead if the CPU was produced earlier than the Ivy Bridge times) and [acpi-bat](http://www.thinkwiki.org/wiki/Tpacpi-bat) to set up battery charging thresholds and save power usage.
I only need to edit the TLP config file at `/etc/default/tlp`, run `sudo tlp start` for the first time and forget about it.
I was also using [powertop](https://wiki.archlinux.org/index.php/powertop) with the `--auto-tune` switch and disabled a few options for power saving on battery (see the corresponding notes on the [system administration page](/en/notebooks/SystemAdmin.html)).
Linux kernel is not very good on power management and driver compatibility for closed-source designed hardware, and there is usually a delay of support on most advanced hardware.
For example, Skylake mobile CPUs were not supported until Linux kernel v4.4 (half a year after the CPU release) and continuously get worse performance than under Windows OS on deep-sleeping optimization of mobile device modules for a long time (you can find the PC-state using powertop).
Be sure to consider this factor when you want to install Linux on a new computer.

For workstations, I have configured a [Dell Precision 7910](http://www.dell.com/us/business/p/precision-t7910-workstation/pd) computer for [CQuIC](https://cquic.unm.edu) (machine is purchased from Dell that the university policy allows). There may be better choices.
Again, Ubuntu OS was installed for its being popular in the research center.
[TORQUE/PBS](http://www.adaptivecomputing.com/products/open-source/torque/) was installed to manage computing job submissions and scheduling.
I have also experiences of using CentOS on a cluster in the earlier days which along side with Scientific Linux OS may be a better choice for dedicated high-performance computing.


### Some notes on computer system administration and tool using can be found [here](/en/notebooks/SystemAdmin.html).
