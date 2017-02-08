scenarios
scenarioIncomingCommit
	self gitCommand: 'reset --hard master^'.
	repository loadPackage: packageName.
	repository fetch.
