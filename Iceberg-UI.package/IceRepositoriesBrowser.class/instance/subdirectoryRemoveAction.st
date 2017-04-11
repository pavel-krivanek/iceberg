menu actions - subdirectories
subdirectoryRemoveAction
	^ GLMGenericAction new
		action: [:presentation :model | 
			presentation selection ifNotNil: [
				model repository backend removeSubdirectory: presentation selection.
				presentation pane browser update ]];
		showTitle: 'Remove';
		icon: #delete asIcon;
		shortcut: $r;
		yourself
