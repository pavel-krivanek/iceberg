accessing
pushUpstream
	^ IceRemoteBranch 
		remoteName: self repository pushRemote remoteName 
		branchName: self name
		inRepository: self repository