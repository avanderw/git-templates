---
layout: home
---

#  git-templates

{{site.description}}

## The Quest

Find the disorder; reduce the entropy; become a great collaborator!

> Re-establishing the context of a piece of code is wasteful. We can’t avoid it completely, so our efforts should go to reducing it as much as possible. Commits can do exactly that and as a result, *a commit message shows whether a developer is a good collaborator*. ~ Peter Hutterer

## The Call

Commit often, so one can easily revert and see progress. Each commit must only do one thing. Commit titles containing the word _"and"_ should probably have used two commits.

A pull request must address one bug or feature. It should only contain multiple commits if there are stages to fix the bug or implement the feature. Tidy up pull-request messages before sharing them. Look into tools like ```--fixup``` and ```--autosquash```.

Keep formatting changes separate from functional changes. You do not want to be the unlucky person reviewing changes to 1000 files where only 2 have been functionally changed. Do not be _that_ person who does this to others.

Do not mix two unrelated functional changes. When an isolated functional change in a bundled-commit needs to be reverted or cherry-picked, it cannot be done without reverting or applying all changes.

Do not send large features in a single commit. It is unpleasant reviewing 100 files when adding a single feature.

## The Journey

<h3><img src="./assets/github.svg" alt="GitHub icon" width="32"/> <a href="{{site.github.url}}" class="view-on-github">Install git-templates (Mandatory)</a></h3>

The instructions to install git-templates are [located in the repository]({{site.github.url}}). The hooks in git-templates come with default active modules and therefore require no further setup. Go to the respective pages for the hooks to learn more on how to configure each one.

<h3><img src="./assets/git.svg" alt="Git icon" width="32"/> <a href="prepare-commit-msg">Setup prepare-commit-msg (Optional)</a></h3>

This hook is invoked by [git-commit](https://git-scm.com/docs/git-commit) right after preparing the default log message, and before the editor is started.

It takes one to three parameters. The first is the name of the file that contains the commit log message. The second is the source of the commit message, and can be: `message` (if a `-m` or `-F` option was given); `template` (if a `-t` option was given or the configuration option `commit.template` is set); `merge` (if the commit is a merge or a `.git/MERGE_MSG` file exists); `squash` (if a `.git/SQUASH_MSG` file exists); or `commit`, followed by a commit SHA-1 (if a `-c`, `-C` or `--amend` option was given).

If the exit status is non-zero, `git commit` will abort.

The purpose of the hook is to edit the message file in place, and it is not suppressed by the `--no-verify` option. A non-zero exit means a failure of the hook and aborts the commit. It should not be used as replacement for pre-commit hook.

<h3><img src="./assets/git.svg" alt="Git icon" width="32"/> <a href="commit-msg">Setup commit-msg (Optional)</a></h3>

This hook is invoked by [git-commit](https://git-scm.com/docs/git-commit) and [git-merge](https://git-scm.com/docs/git-merge), and can be bypassed with the `--no-verify` option. It takes a single parameter, the name of the file that holds the proposed commit log message. Exiting with a non-zero status causes the command to abort.

The hook is allowed to edit the message file in place, and can be used to normalize the message into some project standard format. It can also be used to refuse the commit after inspecting the message file.

<h3><img src="./assets/git.svg" alt="Git icon" width="32"/> <a href="pre-commit">Setup pre-commit (Optional)</a></h3>

This hook is invoked by [git-commit](https://git-scm.com/docs/git-commit). It takes no parameters, and is invoked after a commit is made.

This hook is meant primarily for notification, and cannot affect the outcome of `git commit`.

## The Ordeals

Writing detailed commit messages is a burden that will discourage you from committing early and often. 

Avoid the temptation to use SCM as a backup system. End-of-day commits are random and useless. Using your SCM as a file transfer mechanism will not lead to healthy commit practices. 







