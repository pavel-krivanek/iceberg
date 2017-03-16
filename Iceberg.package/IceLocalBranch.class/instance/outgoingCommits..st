commits
outgoingCommits: aBlock
	| walk | 
	walk := self repository newCommitWalk fromBranch: self.
	self upstream 
		ifNotNil: [ walk uptoBranch: self pushUpstream ]
		ifNil: [ walk uptoBranches: (
			self repository localBranches copyWithout: self) ].

	aBlock cull: walk.
	^ walk commits.