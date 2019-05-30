# hooks

The hooks are written in `#!/bin/sh`. There are some helper scripts to assist with consistency and commonly used functions. Two hooks have been provided; commit-msg and pre-commit. Each directory can be configured with it's own `_config.sh` script.

## Modules

* **commit-msg**
  * **restrict-subject-line**: strict rules for subject formatting
    * **subject-line-capitalise**: ensure sentence case
    * **subject-line-max**: ensure the subject does not exceed `$SUBJECT_LINE_MAX_LEN` characters
    * **subject-line-min**: ensure the subject has a minimum of `$SUBJECT_LINE_MIN_LEN` characters
    * **subject-line-verb**: ensure that the subject starts with an allowed verb
    * **subject-line-period**: ensure that there is no period at the end of the subject
  * **restrict-body**: restricts the body to be wrapped at `$BODY_WRAP` characters
  * **link-jira-issue**: searches for the regex `(Closes|Updates) [A-Z]+-[0-9]+`

## Configuring

There are various areas to configure, each contained as close as possible to the module that it affects.

### Modules

The following modules are enabled by default:

```bash
COMMIT_MSG_MODULES="restrict-subject-line.sh restrict-body.sh"
PRE_COMMIT_MODULES="prevent-master-commit.sh prevent-merge-marker-commits.sh"
SUBJECT_LINE_MODULES="subject-line-min.sh subject-line-max.sh subject-line-capitalise.sh subject-line-period.sh subject-line-verb.sh"
```

These can be configured in their respective directory's `_config.sh` file. For example, to add checks on the commit-msg to check for links to JIRA issues, modify the line to look like:

```bash
COMMIT_MSG_MODULES="restrict-subject-line.sh restrict-body.sh link-jira-issue.sh"
```

### Rules

The following rules are configured by default:

```bash
# subject-line/_config.sh
SUBJECT_LINE_MIN_LEN=8
SUBJECT_LINE_MAX_LEN=50
SUBJECT_LINE_VERB="fix refactor create add update change modify retrieve remove delete release merge revert"

# restrict-body.sh
BODY_WRAP=72
```

The variables are configured with the module file, unless the module contains various rules. Then it is contained in the module directory's `_config.sh` file.

