# hooks

The hooks are written in `#!/bin/sh`. 

## ./helpers:
There are some helper scripts to assist with consistency and commonly used functions. 

## ./modules

Each validation is in it's own module.

## Configuring

Each directory can be configured with it's own `CONFIG.sh` script.

### Enable / Disable

The following modules are enabled by default:

```bash
COMMIT_MSG_MODULES="restrict-subject-line.sh restrict-body.sh"
PRE_COMMIT_MODULES="prevent-master-commit.sh prevent-merge-marker-commits.sh"
SUBJECT_LINE_MODULES="subject-line-min.sh subject-line-max.sh subject-line-capitalise.sh subject-line-period.sh subject-line-verb.sh"
```

To add validation on the commit-msg to check for links to JIRA issues, modify the line to look like:

```bash
COMMIT_MSG_MODULES="restrict-subject-line.sh restrict-body.sh link-jira-issue.sh"
```

