# git-templates
_A collection of git hooks and aliases to be pulled into a global location for git to reference_

The repository is quite old and I don't use the hooks anymore.
Though the aliases are useful still. 

The primary ones are:

- `git ls` - great for checking the commit history
- `git undo` - great to rollback to go back in time
- `git amend` - for those times you make a spelling mistake
- `git alias` - to see all aliases

## Installation

```bash
git config --global include.path '/path/to/git-templates/.gitalias
```

### Hooks

As stated previously, not using these. Git clients have improved much since the early days.

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

## Install

```bash

# install the hooks, new in Git version 2.9
git config --global core.hookspath '/path/to/git-templates/hooks'
```

## Uninstall

`git config --global --unset core.hookspath`

## Updating
```bash
$ cd /path/to/git-templates
$ git pull
```

## Personalise

`git config --global core.editor notepad`

## Changelog
All notable changes to this project will be documented in [CHANGELOG](CHANGELOG.md). 
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) 
and adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## License 
This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details

## Acknowledgements

The hooks have been adapted from [Sitebase/git-hooks](<https://github.com/Sitebase/git-hooks>).
