accessing
pushRemote: anIceRemote 
	self withRepoDo: [ :repo |
		repo config setString: 'remote.pushDefault' to: anIceRemote remoteName ]