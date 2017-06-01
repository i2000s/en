---
layout: post-lesson
title: Git conflict resolving
subtitle:
time: 2017-05-21 11:08:00 -0700
tags:
  - open-science
  - Github
  - Git
  - remote
  - conflict-resolving
categories: community
---
***Work In Progress! This post is part of the [2017 CQuIC computing summer workshop tutorial materials].***
***This tutorial is adapted from [the Software Carpentry workshop](http://swcarpentry.github.io/git-novice/09-conflict/) under the Creative Commons license.***

As soon as people can work in parallel, it's likely someone's going to step on someone
else's toes.  This will even happen with a single person: if we are working on
a piece of software on both our laptop and a server in the lab, we could make
different changes to each copy.  Version control helps us manage these
[conflicts]({{ page.root }}/reference/#conflicts) by giving us tools to
[resolve]({{ page.root }}/reference/#resolve) overlapping changes.

## Resolving conflict on textual files
***Note: This part has been basically covered by Travis, if you feel confident about it, you can jump to the next session following.***

To see how we can resolve conflicts, we must first create one.  The file
`mars.txt` currently looks like this in both partners' copies of our `planets`
repository:

```
$ cat mars.txt
Cold and dry, but everything is my favorite color
The two moons may be a problem for Wolfman
But the Mummy will appreciate the lack of humidity
```

Let's add a line to one partner's copy only:

```
$ nano mars.txt
$ cat mars.txt
Cold and dry, but everything is my favorite color
The two moons may be a problem for Wolfman
But the Mummy will appreciate the lack of humidity
This line added to Wolfman's copy
```

and then push the change to GitHub:

```
$ git add mars.txt
$ git commit -m "Add a line in our home copy"
[master 5ae9631] Add a line in our home copy
 1 file changed, 1 insertion(+)
$ git push origin master
Counting objects: 5, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 352 bytes, done.
Total 3 (delta 1), reused 0 (delta 0)
To https://github.com/vlad/planets
   29aba7c..dabb4c8  master -> master
```

Now let's have the other partner
make a different change to their copy
*without* updating from GitHub:

```
$ nano mars.txt
$ cat mars.txt
Cold and dry, but everything is my favorite color
The two moons may be a problem for Wolfman
But the Mummy will appreciate the lack of humidity
We added a different line in the other copy
```

We can commit the change locally:

```
$ git add mars.txt
$ git commit -m "Add a line in my copy"
[master 07ebc69] Add a line in my copy
 1 file changed, 1 insertion(+)
```

but Git won't let us push it to GitHub:

```
$ git push origin master
To https://github.com/vlad/planets.git
 ! [rejected]        master -> master (non-fast-forward)
error: failed to push some refs to 'https://github.com/vlad/planets.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Merge the remote changes (e.g. 'git pull')
hint: before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

![The Conflicting Changes]({{site.baseurl}}/assets/img/conflict.svg)

Git detects that the changes made in one copy overlap with those made in the other
and stops us from trampling on our previous work.
What we have to do is pull the changes from GitHub,
[merge]({{ page.root }}/reference/#merge) them into the copy we're currently working in,
and then push that.
Let's start by pulling:

```
$ git pull origin master
remote: Counting objects: 5, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 3 (delta 1)
Unpacking objects: 100% (3/3), done.
From https://github.com/vlad/planets
 * branch            master     -> FETCH_HEAD
Auto-merging mars.txt
CONFLICT (content): Merge conflict in mars.txt
Automatic merge failed; fix conflicts and then commit the result.
```

`git pull` tells us there's a conflict,
and marks that conflict in the affected file:

```
$ cat mars.txt
Cold and dry, but everything is my favorite color
The two moons may be a problem for Wolfman
But the Mummy will appreciate the lack of humidity
<<<<<<< HEAD
We added a different line in the other copy
=======
This line added to Wolfman's copy
>>>>>>> dabb4c8c450e8475aee9b14b4383acc99f42af1d
```

Our change—the one in `HEAD`—is preceded by `<<<<<<<`.
Git has then inserted `=======` as a separator between the conflicting changes
and marked the end of the content downloaded from GitHub with `>>>>>>>`.
(The string of letters and digits after that marker
identifies the commit we've just downloaded.)

It is now up to us to edit this file to remove these markers
and reconcile the changes.
We can do anything we want: keep the change made in the local repository, keep
the change made in the remote repository, write something new to replace both,
or get rid of the change entirely.
Let's replace both so that the file looks like this:

~~~
$ cat mars.txt
Cold and dry, but everything is my favorite color
The two moons may be a problem for Wolfman
But the Mummy will appreciate the lack of humidity
We removed the conflict on this line
~~~

To finish merging,
we add `mars.txt` to the changes being made by the merge
and then commit:

~~~
$ git add mars.txt
$ git status
On branch master
All conflicts fixed but you are still merging.
  (use "git commit" to conclude merge)
Changes to be committed:
	modified:   mars.txt
$ git commit -m "Merge changes from GitHub"
[master 2abf2b1] Merge changes from GitHub
~~~

Now we can push our changes to GitHub:

~~~
$ git push origin master
Counting objects: 10, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 697 bytes, done.
Total 6 (delta 2), reused 0 (delta 0)
To https://github.com/vlad/planets.git
   dabb4c8..2abf2b1  master -> master
~~~

Git keeps track of what we've merged with what,
so we don't have to fix things by hand again
when the collaborator who made the first change pulls again:

~~~
$ git pull origin master
remote: Counting objects: 10, done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 6 (delta 2), reused 6 (delta 2)
Unpacking objects: 100% (6/6), done.
From https://github.com/vlad/planets
 * branch            master     -> FETCH_HEAD
Updating dabb4c8..2abf2b1
Fast-forward
 mars.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
~~~

We get the merged file:

~~~
$ cat mars.txt
Cold and dry, but everything is my favorite color
The two moons may be a problem for Wolfman
But the Mummy will appreciate the lack of humidity
We removed the conflict on this line
~~~

We don't need to merge again because Git knows someone has already done that.

Git's ability to resolve conflicts is very useful, but conflict resolution
costs time and effort, and can introduce errors if conflicts are not resolved
correctly. If you find yourself resolving a lot of conflicts in a project,
consider one of these approaches to reducing them:

- Try breaking large files apart into smaller files so that it is less
  likely that two authors will be working in the same file at the same time
- Clarify who is responsible for what areas with your collaborators
- Discuss what order tasks should be carried out in with your collaborators so
  that tasks that will change the same file won't be worked on at the same time


## Conflicts on Non-textual files
What does Git do when there is a conflict in an image or some other non-textual file
that is stored in version control?

Let's try it using our `testwebsite` git repo.
Suppose you are working on the `master` branch, and your collaborator, Josh, is working on the `gh-pages` branch, and both of you want to change a picture called  `productcurveaccum.png` under the `assets/images/` folder.

Here is what you are going to do on the `master` branch:
~~~
$ git checkout master
$ cd assets/images/
$ ls
online-cv-jekyll-theme-2.png           productcurveaccumless.png
online-cv-jekyll-theme.png             productcurveaccum.png
online-cv-responsive-jekyll-theme.png  profile.png
~~~

`ls` shows us that there are a few pictures in the folder. Feel free to open those images to see how they look like.
Next,suppose you want to use `productcurveaccumless.png` to replace `productcurveaccum.jpg` on the master branch and eventually want to merge this changes to the `gh-pages` branch of this repository. You do

~~~
$ cp productcurveaccumless.png productcurveaccum.png
$ git add .
$ git commit -m "Replace productaccum with productaccumless."
[master a140253] Replace productaccum with productaccumless.
 1 file changed, 0 insertions(+), 0 deletions(-)
 rewrite assets/images/productcurveaccumless.png (99%)
$ git push origin master
~~~
Notice that, when I use git commands, I don't have to be on the root directory of the corresponding git repo's local folder.
Git will automatically look for the `.git` folder in the current and up-level folders until it finds the correct one.

Suppose that Josh later replaced the `productcurveaccum.png` with another picture called `online-cv-jekyll-theme-2` on the `gh-pages` branch on the same computer.
Let's assume you are Josh now, and you do the following for him:

~~~
$ git checkout gh-pages
$ cp online-cv-jekyll-theme-2.png productcurveaccum.png
$ git status
On branch gh-pages
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   productcurveaccum.png

no changes added to commit (use "git add" and/or "git commit -a")
$ git add .
$ git commit -m "Replace productaccum with online-cv."
[gh-pages 2c1af41] Replace productaccum with online-cv.
 1 file changed, 0 insertions(+), 0 deletions(-)
 rewrite assets/images/productcurveaccum.png (98%)
~~~

Now, imagine you come back and want to merge the `master` branch to the `gh-pages` branch, you will find there is a conflict.

```
$ git checkout gh-pages
$ git merge master
warning: Cannot merge binary files: assets/images/productcurveaccum.png (HEAD vs. master)
Auto-merging assets/images/productcurveaccum.png
CONFLICT (content): Merge conflict in assets/images/productcurveaccum.png
Automatic merge failed; fix conflicts and then commit the result.
$ git status
On branch gh-pages
You have unmerged paths.
  (fix conflicts and run "git commit")

Unmerged paths:
  (use "git add <file>..." to mark resolution)

	both modified:   productcurveaccum.png

no changes added to commit (use "git add" and/or "git commit -a")
```

As you can see, when there is a conflict on an image or other binary file, git prints
a message with which two sources (branches `HEAD vs. master`) generated this conflict and which files (`assets/images/productcurveaccum.png`) were affected.
The `HEAD` means the current `gh-pages` branch.
More commonly, if you pull a remote `master` branch and then merge with `git merge origin/master`, you will get a similar conflict message with `origin/master` replacing `master` as the conflicting source.

The conflict message here is mostly the same as it was for `mars.txt` in the textual case, but
there is one key additional line:

```
warning: Cannot merge binary files...
```

Git cannot automatically insert conflict markers into an image, or in general a binary file, as it does
for text files. So, instead of editing the image file, we must check out
the version we want to keep. Then we can add and commit this version.

On the key line above, Git has conveniently given us commit identifiers
for the two versions of `productcurveaccum.png`. Our version is `HEAD`, and Josh's
version is `master`. If we want to use our version, we can use
`git checkout`:

~~~
$ git checkout HEAD productcurveaccum.png
$ git add productcurveaccum.png
$ git status
On branch gh-pages
All conflicts fixed but you are still merging.
  (use "git commit" to conclude merge)

Changes to be committed:

	modified:   productcurveaccum.png
~~~

Alternatively, you can also use

```
git checkout --ours productcurveaccum.png
qxd:images$ git status
On branch gh-pages
All conflicts fixed but you are still merging.
  (use "git commit" to conclude merge)

Changes to be committed:

	modified:   productcurveaccum.png
```
with the `--ours` switch.

If instead we want to use Josh's version on the master branch, we can use `git checkout` with
Josh's commit identifier, `master` or `--theirs` instead:

~~~
$ git checkout --theirs productcurveaccum.png
qxd:images$ git status
On branch gh-pages
All conflicts fixed but you are still merging.
  (use "git commit" to conclude merge)

Changes to be committed:

	modified:   productcurveaccum.png
~~~

We can also keep *both* images. The catch is that we cannot keep them
under the same name. But, we can check out each version in succession
and *rename* it, then add the renamed versions. First, check out each
image and rename it:

~~~
$ git checkout HEAD productcurveaccum.png
$ git mv productcurveaccum.png productcurveaccum-josh.png
$ git checkout --theirs productcurveaccum.png
$ mv productcurveaccum.png productcurveaccum-master.jpg
~~~

Then, remove the old `productcurveaccum.png` and add the two new files:

~~~
$ git rm productcurveaccum.png
$ git add productcurveaccum-josh.png
$ git add productcurveaccum-master.png
~~~
This way the original picture doesn't exist any more. Instead, you have two versions co-exist for you and your collaborators to review before deciding which to keep.

Either way, once you decide which one to use, you can then commit the staged changes and push to the remote `gh-pages` branch to view the result online.

<blockquote class="challenge">
## Challenge: A Typical Work Session
You sit down at your computer to work on a shared project that is tracked in a
remote Git repository. During your work session, you take the following
actions, but not in this order:

 - *Make changes* by appending the number `100` to a text file `numbers.txt`
 - *Update remote* repository to match the local repository
 - *Celebrate* your success with beer(s)
 - *Update local* repository to match the remote repository
 - *Stage changes* to be committed
 - *Commit changes* to the local repository

In what order should you perform these actions to minimize the chances of
conflicts? Put the commands above in order in the *action* column of the table
below. When you have the order right, see if you can write the corresponding
commands in the *command* column. A few steps are populated to get you
started.

|order|action . . . . . . . . . . |command . . . . . . . . . . |
|-----|---------------------------|----------------------------|
|1    |                           |                            |
|2    |                           | `echo 100 >> numbers.txt`  |
|3    |                           |                            |
|4    |                           |                            |
|5    |                           |                            |
|6    | Celebrate!                | `AFK`                      |

<blockquote class="solution">
## Solution

|order|action . . . . . . |command . . . . . . . . . . . . . . . . . . . |
|-----|-------------------|----------------------------------------------|
|1    | Update local      | `git pull origin master`                     |
|2    | Make changes      | `echo 100 >> numbers.txt`                    |
|3    | Stage changes     | `git add numbers.txt`                        |
|4    | Commit changes    | `git commit -m "Add 100 to numbers.txt"`     |
|5    | Update remote     | `git push origin master`                     |
|6    | Celebrate!        | `AFK`                                        |

</blockquote>
</blockquote>
