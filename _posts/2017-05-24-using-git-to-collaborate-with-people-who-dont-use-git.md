---
layout: post
title: Using Git to collaborate with people who don't use git
tags: git paper-writing collaboration automation
categories: work-efficiency
---
***This post is a part of the [2017 CQuIC computing summer workshop tutorial materials](https://cquic.github.io/summer17-computing-workshop/) with audio records available there. Please download the [lesson material](https://github.com/CQuIC/summer17-computing-workshop/releases/download/s3/session-3.zip) in order to run the examples used in this lesson.***
***The example may only work if you have write access to the CQuIC@GitHub's [NanofiberPaper2014](https://github.com/CQuIC/NanofiberPaper2014) repo (ask me to grant you the permission).***

One common issue of collaborating with people who don't use Git is that you have to commit on behalf of your collaborators if you decide to use Git for the Git-benefits--like to minimize the info you want to review for each update and to see how your writing gets improved by professors line by line.
Although there are tools for people to collaboratively write papers online, some collaborators in my case don't want to use them.
Without Git and those collaboration tools, things can become very complicated in paper writing (see figure below, for example).

![Fig 1. An [XKCD comedy](https://xkcd.com/) of a paper writing scenario with a professor who doesn't use Git.]({{site.baseurl}}/assets/img/phd101212s.png)
<br><br> 

This tutorial will provide an example of a real paper-writing scenario in handling this mess easily using automation tools that have been covered in the workshop.
You will also learn some ideas of using [git-submodule](https://git-scm.com/docs/git-submodule) to handle the bibliography databases and share them among your group members for easier references management.

A paper-writing example using automation tools
==============================================
In this section, we will navigate into the example folder, `NanofiberPaper2014` which has been tracked by Git.
The main folder contains LaTeX and bash script files in the root and on the `master` branch, and then two sub-folders called `Ben` and `Ivan` for collaborators to update their branches in the same names as the these sub-folders, as well as a sub-folder called `twocolumn` which is swtiched to the `twocolumn` branch to contain files in the completely publication-ready two-column formation.
In contrast, the `master` branch is the easy-read single-column version of the paper draft where equations can take longer space in the entire row and lines and take more vertical space than the `twocolumn` one.
All the files, in the process of paper writing, were shared and synchronized using Dropbox.
The folders of `Ben`, `Ivan` and `twocolumn` are ignored and untracked by git via the `.gitignore` file in order to make the workflow work.

The git workflow is that every collaborator is writing their updates to their individual folders under their names (`Ben` and `Ivan`).
Since I know how to use Git, I don't need to put my branch in the Dropbox.
Instead, I will synchronize my writing to the GitHub remote repository and then merge my and everyone's changes to the `master` branch and eventually the `twocolumn` branch when it is necessary (like at the end of each working days).
Whenever there is a change from my collaborator, I will manually review the changes line by line, equation by equation before merging them.
In the mean time, I also synchronize every collaborator's folder and compile the LaTeX files to PDF with the final merged version of the `master` branch for the collaborators to preview the progress.
The `twocolum` branch and corresponding folder only takes incoming merges without merging backwards to other folders.
Equations and figure sizes are reformatted periodically to make them well fit into the two-column and single-space preprint version for the final journal submission in the `twocolumn` branch.

What I did to automate this Git merging process is to write three scripts--`Makefile`, `SyncToMaster.sh` and `SyncFromMaster.sh`.
Let's look into them and fill out the missing information in those scripts to recover how I make it work.

First, open the `Makefile` script in your favorite text editor.
The script is to compile the LaTeX file into PDF and clean up intermediate files.
Obviously, the file name of the LaTeX file to be compiled is missing, and hence you need to change `PROJECT=` to `PROJECT=Nanofiber` as the LaTeX file's name is `Nanofiber.tex`.
You can test it by running
```
make && make clean
```
in your terminal to see if the PDF can be compiled in the root directory of the git local repo.

Second, open the `SyncToMaster.sh` file in your text editor.
This script is used to merge changes from the collaborators' folders/branches to the master branch.
If any collaborator's folder--including the master folder--has uncommitted changes, it will stop and remind you to check what has been changed.
You can then use `git diff` command to see how things were changed compared to the last update.
If all changes have been committed, it will then merge the collaborator's updates or no-updates to the root directory or the master branch and then push the master branch to the remote repo.
As you may have observed, the script misses the content in the `distributedBranch=` parameter at the beginning.
You will need to fill the individual folder's names where updates are going to be merged to the master branch.
They should include `Ben` and `Ivan`, so you replace the line with `distributedBranch="Ben Ivan"`.
Since the `twocolumn` branch is not going to be merged to the master branch, and my own branch is not in the Dropbox, we don't need to include them into the `distributedBranch` parameter.
You can test how it works by running
```
bash SyncToMaster.sh
```
It may ask you to input your GitHub username and password for this case.

Third, open the `SyncFromMaster.sh` file in your text editor.
This script is used to synchronize the collaborators' folders/branches by merging changes from the master branch.
Again, the the `distributedBranch` parameter is missing value.
But this time, we will need to use `Ben Ivan twocolumn` for its value, as now the changes will be merged to the  `twocolumn` branch eventually.
The script will push the individual branches to the remote repo after merging updates and will stop if there are uncommitted changes anywhere.
You can run
```
bash SyncFromMaster.sh
```
to see how it works.
For this case, I have leave all collaborator's branches one commit behind the `master` branch, and you will see how the automatic merges happen when you run the script.
It may stop as there are uncommitted changes in sub-folders, where you need to manually review and commit the changes.

Using submodules to call the shared BiBTeX database file
========================================================
When I need to cite papers from the bibliography file, I use the bibliography repo, [Archive](https://github.com/i2000s/Archive), as a submodule of the paper writing project.
By calling a submodule for a common BiBTeX file in writing papers, the team can always share the same BibTex keys and reference database in writing paper over time, which will usually save every group member's time in the end.
The basic commands of submodule in Git can be found in the [official document](https://git-scm.com/docs/git-submodule) and the [Pro Git book](https://git-scm.com/book/en/v2/Git-Tools-Submodules), or follow [this](https://github.com/blog/2104-working-with-submodules) and [this](http://komodoide.com/blog/2014-05/git-submodules/) introductions to initialize the bibliography submodule to the master project.
For short, I will briefly summarize a few useful commands that work for my workflow.
The scripts to automate some of the processes to be discussed below can be found in [my script repo](https://github.com/i2000s/scripts/tree/master/Git).

I define a `NanofiberPaper` branch in the `Archive` repo and only use this dedicated branch for my nanofiber paper writing.
Changes made during the paper writing can be easily merged into the master branch of the bibliography repo and won't mess up the rest of the branches in case of conflicts.
To include the branch of bibliography into the paper repo, I navigate into the paper repo on my local computer in the bash window, and use the following in Git V2.10.0 (older versions could need extra commands in initializing the submodule)
```
git submodule add -b NanofiberPaper https://i2000s@github.com/i2000s/Archive.git ./refs
```
This will create a `.gitsubmodule` hidden file in the master repo to tell git that a submodule from the `NanofiberPaper` branch (from the `-b` parameter) of the `Archive` repo will be cloned into the subfolder called `refs`.

After this step, I will see there is a change in the paper repo due to the adding of new submodule.
So, I need to commit the changes in the paper repo and push it to the remote (suppose I am in the master branch of the paper repo):
```
git commit -am "Add a bibliography file as a submodule."
git push origin master
```

Next, I will need to synchronize every branch of the paper repo to include the new submodule with the following commands:
```
git fetch origin
git merge origin/master
git submodule --init --recursive --remote
```
Notice that I use the switch `--remote` just to make sure I always use the latest hash point of the bibliography repo on the `NanofiberPaper` branch.
Without this switch, the submodule will always use the hash point recorded in the `.gitsubmodule` config file.
The `--recursive` switch applies operations on all children submodules recursively if there are more than one layer of submodules.
This switch can be applied to other `git submodule` commands as well, and the depth of submodules can be controlled using the `--depth` parameter.  

After all of these initialization settings, one can use bash scripts to automate daily updates and synchronize changes to the remote repo.
The submodule is now used as a subfolder as well as an independent Git repo in the paper repo, and all changes from the submodule can be pushed to the `Archive` repo and should also be recorded in the paper repo for new changes in the submodule as well.
The command to fetch and merge submodule changes from the remote is
```
git submodule update --remote --merge
```
Similarly, one can replace `--merge` with `--rebase` for rebasing local changes on top of fetched commits.
The command to publish local submodule changes and tell the paper repository that the submodule should be pointing at a new hash point is the following:
```
git push --recurse-submodules=on-demand
```
This command will try to merge changes to the upstream repo of the submodule. If there is any conflicts, it will stop for manual fixes.
Without the trial of merge due to changes, one can replace the parameter of `push` to `--recurse-submodule=check`. Once git finds a change, it will stop and tell users to check changes manually.
To manually solve a conflict in the submodule or to merge a submodule change, one has to go into the submodule folder to fix the problem or do the merge as for a separated repo, and then in the main repo, add and commit the changes from the submodule folder.
The `push` command in the main repo will synchronize the `.gitsubmodule` file to the remote repo which has the hash point of the submodule for which the main repo is used.
If a `push` command is only committed in the submodule folder, it only synchronize the changes in the submodule repo without affecting the main repo on its top--not even to record this submodule change to the main repo's remote.
However, the `push --recurse-submodules=[check|on-demand]` command applied in the main repo will try update the `.gitsubmodule` file with the new hash point in accordance with the new changes in the submodule and then push the main repo to its remote afterwards.

There are other tricks for managing submodules in Git.
For example, one can use `--job <n>` switch for the `git submodule` command to do operations for multiple submodules in a repo in parallel.
This feature was available since Git V2.9.
One can also use `foreach [--recursive] <command>` controller for the `git submodule` command to recursively apply a repeated command to all submodules in a main repo.
More `submodule` options can be found in the latest [official git document](https://git-scm.com/docs/git-submodule).

Problems with different versions of JabRef
==========================================
Even though I use a dedicated Git repository to centralize all of my bibliography entries (here, it is called `Archive` and only contains a single bibtex file), it might be corrupted if people use different versions of BiBTeX editors to view the BibTex file and commit the changes.
For this reason, I recommend everyone to use [JabRef](https://jabref.org) at the same version (v3.x and v4.x should have the same effect) to edit and view the BiBTeX file.
In the mean time, following a few recommendations may help in decreasing the number of troubles if different versions of JabRef have to be used among collaborator.
See [these database setting for JabRef](http://help.jabref.org/en/SharedBibFile), for example.
Alternatively, there are some tools as illustrated on [Stackexchange](http://unix.stackexchange.com/questions/31266/how-to-sort-by-whatever-key-bibtex-entries-in-bib-file) to sort out bibtex entries if other bibliography management software like Mendeley is used.

A small trick: Cleaning up loose objects in Git repositories
============================================================
Sometimes, Git may remind you that you have too many loose objects in your repo as the number of commits increases.
To compress those objects, you can run
```
git gc --aggressive
```
More details can be found from the [git docs](https://git-scm.com/docs/git-gc).
