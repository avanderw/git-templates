# git-templates

git-templates is a collection of git hooks to be used in conjunction with `git config --global init.templatedir`. The hooks are intended to bring about diligence when committing code and to reduce common mistakes.

The hooks are modular with the intention to reduce dependencies between modules. The modules are highly configurable where modules can be enabled/disabled with relative ease. 

## Getting started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Installing

Enable git templates to install everything in `~/path/to/git-templates` to the `.git/` project directory when running `git init`.

```bash
git config --global init.templatedir '~/path/to/git-templates'
```

> NOTE! this will not overwrite any existing files

### Acknowledgements

The hooks have been adapted from [Sitebase/git-hooks](<https://github.com/Sitebase/git-hooks>).

