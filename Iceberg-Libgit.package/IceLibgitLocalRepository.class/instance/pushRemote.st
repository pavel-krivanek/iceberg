accessing
pushRemote
	| pushRemoteName | 
	pushRemoteName := self pushRemoteName.
	^ self remotes detect: [ :remote | remote remoteName = pushRemoteName ]