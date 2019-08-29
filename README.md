# git-templates

git-templates is a collection of hooks and aliases. 
The hooks are intended to bring about diligence when committing code and to reduce common mistakes.
The aliases are for automation of commonly used commands or to simplify complex commands. 

## Getting started

These instructions will get a copy of the project up and running on your local machine for development and testing purposes.

```bash
git checkout https://github.com/avanderw/git-templates.git

# install the hooks, new in Git version 2.9
git config --global core.hookspath '/path/to/git-templates/hooks'

# install the aliases
git config --global include.path '/path/to/git-templates/.gitalias
git ls

e55668d (HEAD -> develop, origin/master, origin/develop, master) Add git alias config
d453696 Complete merge conflict between master and develop
9a4cac9 Add 'setup' to the list of accepted verbs
cf8db7a Update words for subject to be more changelog friendly
26890ed Add tracking for updated merge handling
5663c7b Add todo tracking configuration change
:
```

## Updating
```bash
cd /path/to/git-templates
git pull
```

## Acknowledgements

The hooks have been adapted from [Sitebase/git-hooks](<https://github.com/Sitebase/git-hooks>).

