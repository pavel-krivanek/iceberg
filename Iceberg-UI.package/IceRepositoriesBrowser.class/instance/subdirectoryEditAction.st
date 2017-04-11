menu actions - subdirectories
subdirectoryEditAction
	^ GLMGenericAction new
		selectionAction: #edit;
		showTitle: 'Edit';
		icon: #edit asIcon;
		shortcut: $e;
		yourself
