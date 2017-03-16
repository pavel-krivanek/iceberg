accessing
pushRemoteName
	self withRepoDo: [ :repo |
		^ repo config getString: 'remote.pushDefault' ifAbsent: 'origin' ]