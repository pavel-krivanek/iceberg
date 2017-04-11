building
addRepositorySubdirectoriesTo: composite
	| subdirectories |
	
	(subdirectories := composite fastTable)
		title: 'Subdirectories';
		display: #subdirectories;
		column: 'Path' evaluated: [ :subdirectory :model | model descriptionTextForSubdirectory: subdirectory ].
		
	"actions"
	subdirectories addAction: self subdirectoryCreateNewAction.
	"selection actions"
	"subdirectories 
		addSelectionAction: self branchSwitchAction;
		addSelectionAction: self branchCompareWithCurrentAction	"