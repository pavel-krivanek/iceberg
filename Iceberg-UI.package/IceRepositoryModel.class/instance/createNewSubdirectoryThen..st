actions
createNewSubdirectoryThen: aBlock
	| selection |
	selection := UIManager default
		request: 'Please provide relative path of the new subdirectory'
		initialAnswer: ''
		title: 'Create new subdirectory'.

	selection ifNotNil: [ 
		selection 
			ifEmpty: [ 
				UIManager default 
					abort: 'Subdirectory patch can not be empty.' 
					title: 'Create new subdirectory'. ]
			ifNotEmpty: [ 
				| result |
				result := self repository addSubdirectory: selection.
				aBlock cull: result ] ]