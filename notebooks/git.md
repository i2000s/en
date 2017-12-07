---
layout: default
title: Notes on Git
---
# Advanced Git commands
* One of the common scenario of using Git is to make fixes to a repo *A* not belonging to me but I have already customized the source in the repo for my personal usage before hand.
In this case, I can make a new branch called *patch-1*, for example, in my personal repo just for the fix:
```
git remote add A <url of A>
git fetch A
git checkout -b patch-1 A/patch-1
```
Once I commit all necessary fixes, I can make a pull request through the web interface of the Git repository.
After the PR is merged, I can then delete the *patch-1* branch remotely and locally by
```
git push origin --delete patch-1
git branch -d patch-1
```

* Remove a file stored in Git history:
If the change is not published yet, use
```
git rm --cached FILENAME
git commit --amend -CHEAD
```
or remove the file and then redo the commits in the past 7 commits in the `dev` branch:
```
git filter-branch --prune-empty -d /dev/shm/scratch --index-filter "git rm --cached -f --ignore-unmatch FILEPATH" --tag-name-filter cat -- HEAD~7..HEAD
git update-ref -d refs/original/refs/heads/dev
git reflog expire --expire=now --all
git gc --prune=now
```
In the commands above, `-d` names a temporary directory that does not yet exist to use for building the filtered history. If you are running on a modern Linux distribution, specifying a tree in `/dev/shm` will result in faster execution. Without this `-d` option, it might end up with a large backup blob in the directory after all the operations.

    If the error `/refs/original/ backup has exist` pops up, use
    ```
    rm -r .git/refs/original/
    ```
    to delete the backup first.

    More options can be found [here](https://stackoverflow.com/questions/2100907/how-to-remove-delete-a-large-file-from-commit-history-in-git-repository) and [here](https://help.github.com/articles/removing-sensitive-data-from-a-repository/).

* To compress loose objects, use
```
git gc --aggressive
```

* `git diff --color-words [<path> ...]` can highlight the changes of a file or tree since the last commit in color to the word-level. As `git diff` is not merely comparing indices, `git diff --no-index <path1> <path2>` can compare two files without `git` history and highlight the changes in color. The last command can also go with the `--color-words` switch to show the word differences.

* To reset a local repository to be synchronized with the remote, use
```
git fetch origin
git reset --hard origin/master
```

* Remove a submodule from a Git repository:

1. Delete the relevant section from the `.gitmodules` file.
2. Stage the `.gitmodules` changes `git add .gitmodules`
3. Delete the relevant section from `.git/config`.
4. Run `git rm --cached path_to_submodule` (no trailing slash).
5. Run `rm -rf .git/modules/path_to_submodule`
6. Commit `git commit -m "Removed submodule <name>"`
7. Delete the now untracked submodule files<br/>`rm -rf path_to_submodule`

Ref: [this one](ttps://git.wiki.kernel.org/index.php/GitSubmoduleTutorial#Removal).
