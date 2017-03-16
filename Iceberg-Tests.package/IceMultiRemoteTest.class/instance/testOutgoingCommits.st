tests
testOutgoingCommits
	"Load package"
	repository loadPackage: packageName.

	"Initial state, no outgoing commits"
	"Check both remotes manually and also the default remote (no args)."
	self assert: repository outgoingCommits isEmpty.
	self assert: (repository outgoingCommitsTo: pushRemote) isEmpty .
	self assert: (repository outgoingCommitsTo: repository origin) isEmpty.
	
	"Commit a new version"
	self saveNewVersion.
	
	"The outgoing commit appears when comparing to both remotes."
	self assert: repository outgoingCommits size equals: 1.
	self assert: (repository outgoingCommitsTo: pushRemote) size equals: 1.
	self assert: (repository outgoingCommitsTo: repository origin) size equals: 1.
	
	repository push.

	"Commit has been pushed to the right repository (i.e. the default push remote)"	
	self assert: repository outgoingCommits isEmpty.
	self assert: (repository outgoingCommitsTo: pushRemote) isEmpty.
	self assert: (repository outgoingCommitsTo: repository origin) size equals: 1.
