actions
fetchFrom: aRemote
	self withRepoDo: [ :repo | repo fetchFrom: aRemote remoteName ]
