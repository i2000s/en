---
layout: post
title: Collaborative paper writing powered by Git
tags: git paper-writing
categories: notes
---

Problems with different versions of JabRef:
==========================================
I use a dedicated Git repository to centralize all of my bibliography entries, which call it `Archive` and only contains a large bibtex file.

There are some formatting problems in using different versions of JabRef in using version-control systems.
It would be nice to let files always read by the latest version of JabRef (v3.x) for compatibility of formatting.
In the mean time, following a few recommendations may help in decreasing the number changes if different software or versions of JabRef have to be used between collaborator.
See [these database setting for JabRef](http://help.jabref.org/en/SharedBibFile), for example.
Alternatively, there are some tools as illustrated on [Stackexchange](http://unix.stackexchange.com/questions/31266/how-to-sort-by-whatever-key-bibtex-entries-in-bib-file) to sort out bibtex entries if other bibliography management software like Mendeley is used.

Cleaning up loose objects in Git repositories:
=============================================
```
git gc --aggressive
```
More can be found on the [git docs](https://git-scm.com/docs/git-gc).

Using submodules:
================
When I need to cite papers from the bibliography file, I use the bibliography repo, `Archive`, as a submodule of the paper writing project.
The basic commands of submodule in Git can be found in the [official document](https://git-scm.com/docs/git-submodule) and the [Pro Git book](https://git-scm.com/book/en/v2/Git-Tools-Submodules), or follow [this](https://github.com/blog/2104-working-with-submodules) and [this](http://komodoide.com/blog/2014-05/git-submodules/) introductions to initialize the bibliography submodule to the master project.
For short, I can briefly summarize a few useful commandlines that works for my workflow.

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
The command to fetch and merge submodule changes from the remote reads
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
