querying
versionsDetect: conditionBlock ifNone: noneBlock 
	
	^ self repository currentBranch
		versionsFor: self
		detect: conditionBlock
		ifNone: noneBlock