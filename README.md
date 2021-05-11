# git-templates
_A collection of git hooks and aliases to be pulled into a global location for git to reference_

## Showcase

### Aliases
```bash
$ git alias
feature = !f() { git checkout -b feature/$1; }; f
bugfix = !f() { git checkout -b bugfix/$1; }; f
amend = !git add -A && git commit --amend --no-edit
ls = log --oneline
sync = !git fetch --all && git rebase origin/master
up = !git pull --rebase --prune $@ && git submodule update --init --recursive
save = !git add -A && git commit -m 'SAVEPOINT'
undo = reset HEAD~1 --mixed
wipe = !git add -A && git commit -qm 'WIPE SAVEPOINT' && git reset HEAD~1 --hard
bclean = !f() { git checkout ${1-master} && git branch --merged ${1-master} | grep -v  ${1-master}$ | xargs git branch -d; }; f
bdone = !f() { git checkout ${1-master} && git up && git bclean ${1-master}; }; f
alias = !git config --get-regexp ^alias\. | sed -e s/^alias\.// -e s/\ /\ =\ /

$ git ls
e55668d (HEAD -> develop, origin/master, origin/develop, master) Add git alias config
d453696 Complete merge conflict between master and develop
9a4cac9 Add 'setup' to the list of accepted verbs
cf8db7a Update words for subject to be more changelog friendly
26890ed Add tracking for updated merge handling
5663c7b Add todo tracking configuration change
:
```

### Hooks
```bash
$ git commit -m "Some message"
Reviewing commit integrity (pre-commit)
  (bypass with '--no-verify')
  ✘ Committing to 'refs/heads/master'
  ✔ Small commit (0 files)
  ✔ No large files
  ✔ No merge markers
  ✔ Allowed mime types
1 warning, continue (y/n)? y
Time taken: 3s

If applied this commit will
  Some message

Reviewing commit message (commit-msg)
  (bypass with '--no-verify')
  ✘ Subject does not start with and approved word
      (use <Fix, Change, Add, Remove, Deprecate, Secure, Document, Maintain, Release>)
  ✘ Summary (12 characters) is shorter than 16 characters
  ✓ Summary ends with a period
  ✓ No body
2 warnings, continue (y/n)? n
Commit denied: 3s
```

## Getting started

```bash
$ git checkout https://github.com/avanderw/git-templates.git

# install the hooks, new in Git version 2.9
$ git config --global core.hookspath '/path/to/git-templates/hooks'

# install the aliases
$ git config --global include.path '/path/to/git-templates/.gitalias

$ git ls
4bfc893 (HEAD -> master, origin/master) Change authors alias to include email
34916f0 Change commits alias to work with author and no merges
4301622 (tag: v3.2.0) Add commit count statistic tracking alias
6949d86 (tag: 3.1.0) Add two new aliases for statistics collection
:
```

## Updating
```bash
$ cd /path/to/git-templates
$ git pull
```

## Changelog
All notable changes to this project will be documented in [CHANGELOG](CHANGELOG.md). 
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) 
and adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## License 
This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details

## Acknowledgements

The hooks have been adapted from [Sitebase/git-hooks](<https://github.com/Sitebase/git-hooks>).
