this:
	cp backup-before-rebase.sh .git/hooks/pre-rebase

local: this
	# distribute to all neighbouring repositories
	# CAUTION: Overwrites existing hooks
	# learned from http://askubuntu.com/a/300774
	# and http://stackoverflow.com/a/15346489/4341322
	cp backup-before-rebase.sh pre-rebase
	find ../*/.git/hooks -type d -exec cp pre-rebase {} \;
	rm pre-rebase

test: this
	git stash
	git checkout _TEST
	git rebase master

abort: 
	git rebase --abort
	git checkout master
	git stash pop
