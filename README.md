# git-templates
_A collection of useful Git aliases for enhanced productivity_

A curated set of Git aliases that improve your command-line workflow with better logging, statistics, and repository management commands.

## Available Aliases

### Essential Aliases

- **`git ls`** - View commit history with a beautiful graph format
  - Shows date, hash, message, and author in color
  - Perfect for quickly scanning commit history

- **`git undo`** - Undo the last commit while keeping changes
  - Moves the last commit back to your working directory
  - Safe way to fix mistakes before re-committing

- **`git amend`** - Fix the last commit
  - Stages all changes and amends them to the previous commit
  - Great for fixing typos or forgotten files

- **`git alias`** - List all configured aliases
  - Shows all your Git aliases with color-coded output
  - Helpful for discovering available shortcuts

### Synchronization

- **`git sync`** - Rebase current branch on top of the default branch
  - Fetches all changes and rebases cleanly
  
- **`git up`** - Update everything (pull, rebase, submodules)
  - Comprehensive update command for the entire repository

### Repository Analysis

- **`git authors`** - Show commit counts by author
  - Lists all contributors with their commit counts
  
- **`git stats "Author Name"`** - Detailed statistics for a specific author
  - Shows files changed, lines added/deleted, and ratios

- **`git recent`** - Show recently modified branches
  - See which branches have been worked on recently

- **`git age`** - Show repository age and commit count
  - First and last commit dates with total commit count

- **`git activity`** - Show commit activity by hour of day
  - Visualize when commits are typically made

- **`git weekly`** - Show weekly commit statistics
  - Track commit activity over time

### Search & Discovery

- **`git search "text"`** - Search commit history for specific content
  - Find when specific code was added or modified

- **`git big`** - Find the largest files in the repository
  - Identify files that are bloating the repository

- **`git filetypes`** - Show file type statistics
  - See the distribution of file extensions

### Maintenance

- **`git cleanup`** - Clean up repository
  - Prunes remote branches, runs garbage collection, removes untracked files

- **`git reauthor "old@email.com"`** - Change author information
  - Updates all commits from a specific email to your current Git config
  - **Warning:** Rewrites history - use with caution

## Installation

Clone this repository to your machine:

```powershell
git clone https://github.com/avanderw/git-templates.git C:\git-templates
```

Configure Git to include these aliases globally:

```powershell
git config --global include.path 'C:/git-templates/.gitalias'
```

**Note:** Use forward slashes (`/`) in the path for cross-platform compatibility.

Verify the installation:

```powershell
git alias
```

## Uninstallation

Remove the alias configuration:

```powershell
git config --global --unset include.path
```

## Updating

Navigate to the repository and pull the latest changes:

```powershell
cd C:\git-templates
git pull
```

## Windows Configuration

### Setting Your Editor

Configure VS Code as your Git editor:

```powershell
git config --global core.editor "code --wait"
```

Or use Notepad as a simple alternative:

```powershell
git config --global core.editor notepad
```

### Line Endings

Configure Git to handle Windows line endings properly:

```powershell
# Convert LF to CRLF on checkout, CRLF to LF on commit
git config --global core.autocrlf true
```

### Credential Management

Enable the Windows Credential Manager for storing Git credentials:

```powershell
git config --global credential.helper manager
```

### Diff Tool

Configure a visual diff tool (example using VS Code):

```powershell
git config --global diff.tool vscode
git config --global difftool.vscode.cmd 'code --wait --diff $LOCAL $REMOTE'
```

### Performance on Windows

Improve Git performance on Windows:

```powershell
# Enable parallel index preload
git config --global core.preloadindex true

# Enable file system cache
git config --global core.fscache true

# Increase buffer size for better performance
git config --global http.postBuffer 524288000
```

### User Configuration

Set your identity (required for commits):

```powershell
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Default Branch Name

Set the default branch name for new repositories:

```powershell
git config --global init.defaultBranch main
```

## License 
This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details

## Acknowledgements

The hooks have been adapted from [Sitebase/git-hooks](<https://github.com/Sitebase/git-hooks>).
