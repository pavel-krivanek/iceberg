running
ensureRepositoryAt: dirName clonedFrom: anUrlString
	^ self
		ensureRepositoryAt: dirName
		clonedFrom: anUrlString
		ifNew: [  ]