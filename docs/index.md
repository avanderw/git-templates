---
layout: home
---

#  git-templates

{{site.description}}

## The Quest

Every commit must complete the following statement:

> If applied, this commit will _\<your subject line here>_

## The Call

Commit often, so one can easily revert and see progress. Each commit must only do one thing. Commit titles containing the word _"and"_ should probably have used two commits.

A pull request must address one bug or feature. It should only contain multiple commits if there are stages to fix the bug or implement the feature. Tidy up pull-request messages before sharing them. Look into tools like ```--fixup``` and ```--autosquash```.

Keep formatting changes separate from functional changes. You do not want to be the unlucky person reviewing changes to 1000 files where only 2 have been functionally changed. Do not be _that_ person who does this to others.

Do not mix two unrelated functional changes. When an isolated functional change in a bundled-commit needs to be reverted or cherry-picked, it cannot be done without reverting or applying all changes.

Do not send large features in a single commit. It is unpleasant reviewing 100 files when adding a single feature.

## The Journey

Install the templates.

(link to the repository)

Configure your commit-msg standards.

Configure your pre-commit standards.

## The Ordeals

Writing detailed commit messages is a burden that will discourage you from committing early and often.

## The Goal

A committed world with meaning.





