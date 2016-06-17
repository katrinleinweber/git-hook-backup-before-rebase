# Backup Git branches before rebasing

This pre-rebase hook creates a `_REBASE_BACKUP` branch from the one that is about to be rebased. Read https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks to learn more about Git hooks. To activate this hook, either

- copy the content of `backup-before-rebase.sh` into your existing `.git/hooks/pre-rebase` file, 
- or `cp backup-before-rebase.sh .git/hooks/pre-rebase` after downloading the file into a repository, if you didn't set up another hook already.
