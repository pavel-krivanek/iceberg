auxiliar
createTestRepository: aRemoteRepository
	pullRemote := IceRemote name: 'pullRemote' url: origin.
	origin := self createPushRepository.	

	^ (super createTestRepository: origin)
		addRemote: pullRemote;
		pullRemote: pullRemote;
		yourself