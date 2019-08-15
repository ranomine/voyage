visiting
readEdges: aDescription
	| edges |
	edges := repository outgoingEdgesOf: object toClass: aDescription kind.
	aDescription isLazy
		ifTrue: [  
			^ edges collect: [:each | | handle |
				handle := ($/ split: (each at: '_to')).
				self lazyProxyClass
					repository: repository
					objectClass: aDescription kind 
					id: handle second ] ]
		ifFalse: [ self halt ].
