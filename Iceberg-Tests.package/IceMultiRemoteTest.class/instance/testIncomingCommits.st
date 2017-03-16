tests
testIncomingCommits
	self scenarioIncomingCommit.

	self assert: repository incomingCommits size equals: 1.
	self assert: (repository incomingCommitsFrom: repository origin) size equals: 1.
	self assert: (repository incomingCommitsFrom: pushRemote) isEmpty.
	
	repository pull.
	
	self assert: repository incomingCommits isEmpty.
	self assert: (repository incomingCommitsFrom: repository origin) isEmpty.
	self assert: (repository incomingCommitsFrom: pushRemote) isEmpty.
	
