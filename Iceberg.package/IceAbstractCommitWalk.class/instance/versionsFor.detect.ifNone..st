walking
versionsFor: package detect: conditionBlock ifNone: noneBlock 
	
	self modifyingPackage: package.
	
	self commitsDo: [ :commit | | version |
		version := commit versionFor: package.
		(conditionBlock value: version)
			ifTrue: [ ^ version ] ].
		
	^ noneBlock value