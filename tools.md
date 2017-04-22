---
layout: default
title: Tools
subtitle: Things that make my work easier
---

This is a list of some of the tools that I use on a regular basis that have
come to be an essential part of my workflow.

## Writing papers

I use **LaTeX** for typesetting, and [TexStudio](http://texstudio.org/)
for typing.
References are managed using **Bibtex**.  I also use
[JabRef](http://jabref.org/), which is a simple GUI frontend for
Bibtex files.
Ideas with references are organized using [Docear](http://docear.org).

Most papers are kept in private repositories on
[CQuIC@GitHub](http://cquic-github.github.io) and [Bitbucket](http://bitbucket.org).  My coauthors and I use **Git** to
allow us to work remotely on a paper and merge our changes.
If a coauthor is not comfortable with Git, papers are kept on **Dropbox**.

## Reading papers
I keep abreast of the literature using [Inoreader]() (an RSS feed reader) with
subscriptions to about a dozen arXiv and journal feeds.  I have a few alerts
set up on [Google Scholar](http://scholar.google.com), which I also use for
finding specific papers.  See the post on
[Searching the Scientific Literature](http://www.davidketcheson.info/2011/10/27/searching-scientific-literature.html).


## Presentations and multimedia
Lately, I write most presentations in **Powerpoint**.  I use
[texpoint](http://texpoint.necula.org/) to typeset equations onto slides.  
For drawn diagrams and graphics, I use [Omnigraffle](https://www.omnigroup.com/omnigraffle)
and [Inkscape](https://inkscape.org/).

For 3D modeling and animations, I am starting with [Blender](http://www.blender.org/) and used [Pov-Ray](http://www.povray.org/) before due to my colleagues.

## Code
Most of my coding is done with Matlab because most of collaborators use it and my university--UNM--provides it for free to me as the original home of Matlab.  I also use the following:

 1. The Jupyter notebook (formerly IPython and IJulia notebook). For interactive running and debugging. And for organizing, recording, and
    sharing code with animations and mathematics.
 1. [Github](http://github.com) and [BitBucket](http://bitbucket.com).  For collaborative code development.
 2. [Eclipse](https://www.eclipse.org/) for C and Java programming IDE. Used once for Arduio and others.
 3. [Vim](http://www.vim.org) for plain programming.

## Plotting

[Matlab](http://matlab.com), [Matplotlib](http://matplotlib.org/) and [VisClaw](https://github.com/clawpack/visclaw).

[comment] # (## Teaching)

[comment] # ( 1. SageMathCloud)
[comment] # ( 2. The Jupyter notebook (formerly IPython notebook).)

## Notes and productivity

 1. [OneNote](https://www.onenote.com/) from MicroSoft.
 1. [NValt](http://brettterpstra.com/nvalt-2-2-public-beta/).  For managing
    plain-text notes.
 1. [Omnifocus](http://www.omnigroup.com/products/omnifocus/).  For managing all the non-research stuff I do.
 1. [Gitit](http://gitit.net/).  Wiki software could be useful for
    internal collaboration within a group.

## Websites

 1. [Jekyll](https://github.com/mojombo/jekyll).  For building this website and a few others on GitHub.
 2. [Coda](https://panic.com/coda/).  
 3. [Wordpress](http://wordpress.org/). For the [CQuIC website](http://cquic.unm.edu) I participated to build.

## computers

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


## Some notes on computer system administration and tool using can be found [here](/en/notebooks/SystemAdmin.html).
