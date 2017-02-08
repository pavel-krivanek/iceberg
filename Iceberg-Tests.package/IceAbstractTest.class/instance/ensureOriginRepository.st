running
ensureOriginRepository
	^ self
		ensureRepositoryAt: projectName
		clonedFrom: ('https://github.com/npasserini/{1}.git' format: {projectName})
		ifNew: [ :originDirectory | 
			(OSEnvironment default at: 'CI' ifAbsent: [  ]) = 'true'
				ifTrue: [ Transcript
						show: 'Setting user information for CI';
						cr.
					IceGitCommand
						in: originDirectory
						execute: {'config' . '--global' . 'user.email' . '"npasserini@gmail.com"'}.
					IceGitCommand
						in: originDirectory
						execute: {'config' . '--global' . 'user.name' . '"Iceberg CI"'} ] ]