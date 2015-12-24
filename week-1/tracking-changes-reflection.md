*	How does tracking and adding changes make developers' lives easier?
	* Its a ledger of previous works (like a table of contents or a weather log for a boat captain)
*	What is a commit?
	* Its a saved checkpoint for my code
*	What are the best practices for commit messages?
	* Commit often, and for safety, push regularly to maintain frequent off-site backups. 
*	What does the HEAD^ argument mean?
	* Last commit. Used to "bring back" any commits that have been completed
*	What are the 3 stages of a git change and how do you move a file from one stage to the other?
*	Write a handy cheatsheet of the commands you need to commit your changes?
	* Git pull = sets the most up to date environment to begin work
	* Git push = once work has been completed and tracked with git add and git commit, we can push to a remote location/master branch located offsite. Initiate a merge request
	* Git merge = the owner of the master branch will correct any conflicts and authorize a merge request. Once approved, changes will be merged to master branch. Everyone working on the project can then initiate a pull request to their local machine to obtain the most up to date code
*	What is a pull request and how do you create and merge one?
	* pull = command that combines fetch and merge from the remote repo to current branch on local machine 
	* in terminal type git pull, then git merge master
*	Why are pull requests preferred when working with teams?
	* Because it will keep the working branch up to date with the latest changes. That way, any conflicts that surface between the code changes that are being worked on and those approved from the master branch can be dealt with soon.