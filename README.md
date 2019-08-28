# git-templates

git-templates is a collection of git hooks to be used in conjunction with `git config --global init.templatedir`. The hooks are intended to bring about diligence when committing code and to reduce common mistakes.

The hooks are modular with the intention to reduce dependencies between modules. The modules are highly configurable where modules can be enabled/disabled with relative ease. 

## Getting started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Installing

There are three methods for installing.

```bash
git config --global include.path '~/path/to/git-templates/.gitalias
```

#### Reference hooks from one location for all repositories

To use global hook scripts place them all outside of your repositories and then point Git at this new folder.

```bash
# new in Git version 2.9
git config --global core.hookspath '~/path/to/git-templates/hooks'
```

#### Setup git to copy hooks to each repository on init

Enable git templates to install everything in `~/path/to/git-templates` to the `.git/` project directory when running `git init`.

```bash
git config --global init.templatedir '~/path/to/git-templates'
```

> NOTE! this will not overwrite any existing files. These will need to be cleaned by hand when updating.

#### Manual

Lastly, you can manually copy the `git-templates/hooks` directory to the project's `.git/` directory.

### Acknowledgements

The hooks have been adapted from [Sitebase/git-hooks](<https://github.com/Sitebase/git-hooks>).

