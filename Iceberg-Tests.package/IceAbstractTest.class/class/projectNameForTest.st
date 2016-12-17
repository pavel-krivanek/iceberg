accessing
projectNameForTest
	^ ProjectNameForTest ifNil: [ ProjectNameForTest := 'pharo-git-test' ]