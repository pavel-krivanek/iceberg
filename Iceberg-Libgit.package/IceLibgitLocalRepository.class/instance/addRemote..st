actions
addRemote: aRemote
	self withRepoDo: [ :repo |
		repo addRemote: aRemote remoteName url: aRemote url.
		repo fetchFrom: aRemote remoteName.
	]