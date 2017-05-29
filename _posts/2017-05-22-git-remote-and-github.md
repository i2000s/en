---
layout: post-lesson
title: Github remote and Github
subtitle:
time: 2017-05-21 10:59:00 -0700
tags:
  - open-science
  - Github
  - Git
  - remote
  - conflict-resolving
categories: community
---
***Work In Progress! This post is part of the [2017 CQuIC computing summer workshop tutorial materials].***
***This tutorial is adapted from [the Software Carpentry workshop](http://swcarpentry.github.io/git-novice/07-github/) under the Creative Commons license.***

Version control really comes into its own when we begin to collaborate with
other people.  We already have most of the machinery we need to do this; the
only thing missing is to copy changes from one repository to another.

Systems like Git allow us to move work between any two repositories.  In
practice, though, it's easiest to use one copy as a central hub, and to keep it
on the web rather than on someone's laptop.  Most programmers use hosting
services like [GitHub](http://github.com), [BitBucket](http://bitbucket.org),
[GitLab](http://gitlab.com/) or the [UNM GitLab service for UNM members](https://libutil.unm.edu/users/sign_in) to hold those master copies; we'll explore the pros
and cons of this in the final section of this lesson.

## Set up local and remote repositories
Let's start by sharing the changes we've made to our current project with the
world.  Log in to GitHub, then click on the icon in the top right corner to
create a new repository called `testwebsite`:

![Creating a Repository on GitHub (Step 1)]({{site.baseurl}}/assets/img/github-create-repo-01.png)

Name your repository "testwebsite" and then click "Create Repository":

![Creating a Repository on GitHub (Step 2)]({{site.baseurl}}/assets/img/github-create-repo-02.png)

As soon as the repository is created, GitHub displays a page with a URL and some
information on how to configure your local repository:

![Creating a Repository on GitHub (Step 3)]({{site.baseurl}}/assets/img/github-create-repo-03.png)

This effectively does the following on GitHub's servers:

```{bash}
mkdir testwebsite
cd testwebsite
git init
```

Now, we have created a repository on the GitHub server as a remote repository, but the remote repository on GitHub doesn't contain any files yet.
We will need to create local files and upload them to the remote repository.
To do that, you can navigate to your local working directory pre-downloaded from the [IT workshop repo](https://github.com/CQuIC/summer17-computing-workshop/) and then
```
git init
```


![Freshly-Made GitHub Repository]({{site.baseurl}}/assets/img/git-freshly-made-github-repo.png)

The next step is to connect the two repositories.  We do this by making the
GitHub repository a [remote](https://help.github.com/categories/managing-remotes/) for the local repository.
The home page of the repository on GitHub includes the string we need to
identify it:

![Where to Find Repository URL on GitHub]({{site.baseurl}}/assets/img/github-find-repo-string.png)

Click on the 'HTTPS' link to change the [protocol](https://gist.github.com/grawity/4392747) to HTTPS.

> ## A side note on HTTPS vs. SSH
>
> We use HTTPS here because it does not require additional configuration.  After
> the workshop you may want to set up SSH access, which is a bit more secure, by
> following one of the great tutorials from
> [GitHub](https://help.github.com/articles/generating-ssh-keys),
> [Atlassian/BitBucket](https://confluence.atlassian.com/display/BITBUCKET/Set+up+SSH+for+Git)
> and [GitLab](https://about.gitlab.com/2014/03/04/add-ssh-key-screencast/)
> (this one has a screencast).

![Changing the Repository URL on GitHub]({{site.baseurl}}/assets/img/github-change-repo-string.png)

Copy that URL from the browser, go into the local `testwebsite` repository, and run
this command (replace `i2000s` with your github username--so as all similar commands in this article):

```{bash}
git remote add origin https://github.com/i2000s/testwebsite.git
```

Make sure to use the URL for your repository rather than i2000s's: the only
difference should be your username instead of `i2000s`.

We can check that the command has worked by running `git remote -v`:

```{bash}
$ git remote -v
origin   https://github.com/i2000s/testwebsite.git (push)
origin   https://github.com/i2000s/testwebsite.git (fetch)
```

## Push to remote
The name `origin` is a local nickname for your remote repository. We could use
something else if we wanted to, but `origin` is by far the most common choice.

Once the nickname `origin` is set up, this command will push the changes from
our local repository to the repository on GitHub:

```{bash}
$ git push origin master

Counting objects: 130, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (127/127), done.
Writing objects: 100% (130/130), 1.03 MiB | 0 bytes/s, done.
Total 130 (delta 21), reused 0 (delta 0)
remote: Resolving deltas: 100% (21/21), done.
To https://github.com/i2000s/testwebsite.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.
```


Note that, in the pushing process, you may be asked to provide a github username and password.
This could happen every time you push a repo to remote.
You can actually set up a default username to the remote URL so that git won't ask you your github username again.
The new url should be something like `https://i2000s@github.com/testwebsite.git` (replace `i2000s` with your real github username).
This URL can either be modifed by editting the `.git/config` file or type command line
```
git remote set-url origin https://i2000s@github.com/testwebsite.git
```
If you want not to type your password every time neither, you can replace the url to origin in the formation of `https://i2000s:YOURPASSWORD@github.com/testwebsite.git`.


Up to now, our local and remote repositories are now in this state:

![GitHub Repository After First Push]({{site.baseurl}}/assets/img/github-repo-after-first-push.png)

When you push for the first time to a remote, you may also want to use a `-u` option used with `git push`.
This option is synonymous with the `--set-upstream-to` option for the `git branch` command, and is used to associate the current branch with a remote branch so that the `git pull` command can be used without any arguments. To do this, simply use `git push -u origin master` once the remote has been set up.


## Pull from remote
We can pull changes from the remote repository to the local one as well:

```{bash}
$ git pull origin master

From https://github.com/i2000s/testwebsite
 * branch            master     -> FETCH_HEAD
Already up-to-date.
```

Pulling has no effect in this case because the two repositories are already
synchronized.
If someone else had pushed some changes to the repository on
GitHub, though, this command would download them to our local repository.

## GitHub GUI

Browse to your `testwebsite` repository on GitHub.
Under the Code tab, find and click on the text that says "XX commits" (where "XX" is some number).
Whenever you push the contents of your local repository to the remote, GitHub also generate a timestamps for each commit.
Hover over, and click on, the three buttons to the right of each commit.
What information can you gather/explore from these buttons?
How would you get that same information in the shell?

 The answer is the following:
 The left-most button (with the picture of a clipboard) copies the full identifier of the commit to the clipboard. In the shell, ```git log``` will show you the full commit identifier for each commit.

 When you click on the middle button, you'll see all of the changes that were made in that particular commit. Green shaded lines indicate additions and red ones removals. In the shell we can do the same thing with ```git diff```. In particular, ```git diff ID1..ID2``` where ID1 and ID2 are commit identifiers (e.g. ```git diff a3bf1e5..041e637```) will show the differences between those two commits.

 The right-most button lets you view all of the files in the repository at the time of that commit. To do this in the shell, we'd need to checkout the repository at that particular time. We can do this with ```git checkout ID``` where ID is the identifier of the commit we want to look at. If we do this, we need to remember to put the repository back to the right state afterwards!


## GitHub License, README files and the gh-pages branch

In this section we learned about creating a remote repository on GitHub, but when you initialized your
GitHub repo, you didn't add a `README.md` or a license file. If you had, what do you think would have happened when
you tried to link your local and remote repositories?
In this case, since we already had a `README` file in our own (local) repository, we'd see a merge conflict (when git realises that there are two versions of the file and asks us to reconcile the differences).
We will discuss git conflict resolving in the next session, and for now, we will take a look on the `README.md` file provided in the folder and create a new branch to generate a static website via GitHub.

Now, you can use your favorite text editor to preview the `README.md` file.
The `*.md` extension usually means the file is a [markdown](https://guides.github.com/features/mastering-markdown/) file.
I personally use [Atom](https://atom.io/) to edit markdown files since it has an integrated Markdown previewer.
If you do want to use Atom, you can press `Ctrl + Shift + P` and type in `Install packages` to find the `install packages/themes` function in the menu (or use the menu `Packages/Settings View/Install Packages/Themes` to open the panel);
In the search bar, type in `markdown-preview` to see if you have the markdown previewer (the one with the Atom logo) installed or not;
If so, go to `File/Add Project Folder` and add your current git local working directory as your project, open the `README.md` file on Atom, and navigate to the menu called `Packages/Markdown Preview/Toggle Preview` to open up a second preview panel along side of the `README.md` source file.

From the preview panel, you can easily see how the markdown syntax generates basic formations and how complicated formations can be all managed in plain texts.

Similarly to the license file.
Normally, we need to be clear on what is the protocol to use the content, and the LICENSE file serves the purpose.
More details can be found in [this tutorial](http://swcarpentry.github.io/git-novice/11-licensing/).

In this part, we will start making a [Jekyll](https://jekyllrb.com/) website using github's GitHub pages service.

Now on your computer's terminal, create a new branch based on the master branch by
```
git checkout -b gh-pages
git push origin gh-pages
```
This will create a new branch called `gh-pages` and push it to the remote repository.
As a result, GitHub renders your markdown code into HTML files using a Jekyll engine and generates a static website at `https://i2000s.github.io/testwebsite`.
You can view it on your webbrowser.

## Comparison among remote repository hosting service providers
Before we jump into GitHub even more, let's talk about briefly on the similarities and differences among popular git remote service providers as mentioned at the beginning.
A detailed comparison among GitHub, BitBucket, GitLab and Coding can be found [here](https://medium.com/flow-ci/github-vs-bitbucket-vs-gitlab-vs-coding-7cf2b43888a1).
We have created a GitHub organization for CQuIC so that we are granted with infinite number of private repos free of charge as a research and educational body.
Feel free to best use of it through the [CQuIC@GitHub](https://github.com/CQuIC) interface.
Similarly, there is also a [CQuIC organization](https://gitlab.com/CQuIC) on GitLab in case we need some extra benefit besides GitHub.

The [UNM GitLab server](https://libutil.unm.edu/users/sign_in) is a community version of the GitLab open-source tool installed on an UNM server.
Compared to others, the UNM GitLab service is good at hosting [Git large files](https://about.gitlab.com/2015/11/23/announcing-git-lfs-support-in-gitlab/).
So, it could be helpful to manage repos with data files without obvious limitations.
But the total number of repos one can have on the server is limited (up to 10); since the service is associated with UNM NetIDs, it's not clear in the documentations how the repos be treated once a student repo owner graduates from UNM.

Hopefully, this helps you on deciding which git remote server you want to use for your repos.
