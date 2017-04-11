menu actions - subdirectories
subdirectoryCreateNewAction
	^ GLMGenericAction new
		action: [ :presentation :model | 
			model createNewSubdirectoryThen: [ presentation pane browser update ] ];
		icon: #add asIcon;
		showTitle: 'Create subdirectory'; 
		yourself