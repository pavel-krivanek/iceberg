private
detachRemote: aRemote
	(self pushRemote isSame: aRemote) ifTrue: [ self pushRemote: nil ].
