---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

If applied, this commit will _\<your subject line here>_

The idea with commits are to commit often, so you easily can revert and easily see the progress.

Writing detailed commit messages is a burden that will discourage you from committing early and often.

You need to tidy commit messages up a bit before sharing it with other people. Look into tools like ```--fixup``` and ```--autosquash```.

Aim for atomic commits: each commit should do one thing only. Similarly, a pull request should aim to fix one bug or implement one new feature. It should only contain multiple commits if that is required to fix the bug or implement the feature.

If your commit / pull request title contains the word "and" then you probably should have used two commits / pull requests.

## Things to avoid

- Mixing whitespace changes with functional code changes.
- Mixing two unrelated functional changes.
- Sending large new features in a single giant commit.