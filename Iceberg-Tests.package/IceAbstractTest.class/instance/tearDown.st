running
tearDown
	super tearDown. 
	
	self removeTestPackages.

	IceTestCredentialProvider uninstall.
	repository ifNotNil: #forget.

	(IceRepository registry 
		select: [:repo | repo origin url endsWith: projectName, '.git'])
		do: [ :repo | 
			repo forget.
			Transcript logCr: ('Warning {1} left a registered repository' format: {self}) 
		]

	