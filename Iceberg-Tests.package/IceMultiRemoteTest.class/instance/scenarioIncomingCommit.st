tests
scenarioIncomingCommit
	self gitCommand: 'reset --hard master^'.
	self gitCommand: 'push -f'.
	repository loadPackage: packageName.
