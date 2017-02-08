running
ensureRepositoryAt: dirName clonedFrom: anUrlString ifNew: aBlock
	| directory |
	directory := self defaultLocationforTempRepository: dirName.
	directory exists ifFalse: [ 
		directory parent ensureCreateDirectory.
		IceGitCommand 
			in: directory parent  
			execute: { 
				'clone'. 
				'--bare'. 
				anUrlString.
				dirName }.
				
		aBlock cull: directory. 
	].

	^ 'file://', directory fullName.
