all:
	cp backup-before-rebase.sh .git/hooks/pre-rebase

test: all
	git stash
	git checkout _TEST
	git rebase master

abort: 
	git rebase --abort
	git checkout master
	git stash pop
