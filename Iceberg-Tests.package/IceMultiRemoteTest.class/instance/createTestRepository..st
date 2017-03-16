auxiliar
createTestRepository: aRemoteRepository
	pushRemote := IceRemote name: 'push' url: self createPushRepository.

	^ (super createTestRepository: origin)
		addRemote: pushRemote;
		pushRemote: pushRemote;
		yourself