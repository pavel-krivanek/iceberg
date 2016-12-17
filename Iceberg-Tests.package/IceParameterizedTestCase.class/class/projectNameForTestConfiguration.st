configurations
projectNameForTestConfiguration
	^ 	IceTestParameter 
		withOptions: #(
			'pharo-git-test'
			'pharo-git-subdirectory-test')
		on: IceAbstractTest  
		selector: #projectNameForTest