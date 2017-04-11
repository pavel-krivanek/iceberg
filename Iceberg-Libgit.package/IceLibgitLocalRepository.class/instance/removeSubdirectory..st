subdirectories
removeSubdirectory: aSubdirectory

	| toRemove |
	toRemove := self subdirectories detect: [ :each | each = aSubdirectory ] ifNone: nil.
	toRemove ifNotNil: [ 
		self subdirectories remove: toRemove ].
	^ toRemove