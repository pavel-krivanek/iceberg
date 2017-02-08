tests
testIncomingCommits
	self scenarioIncomingCommit.

	self assert: repository incomingCommits size equals: 1.
	self assert: (repository incomingCommitsFrom: pullRemote) size equals: 1.
	self assert: (repository incomingCommitsFrom: repository origin) isEmpty.
	
	repository pull.
	
	self assert: repository incomingCommits isEmpty.
	self assert: (repository incomingCommitsFrom: pullRemote) isEmpty.
	self assert: (repository incomingCommitsFrom: repository origin) isEmpty.
	
