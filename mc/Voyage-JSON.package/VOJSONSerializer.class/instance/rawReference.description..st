private raw
rawReference: anObject description: aDescription
	| target ref |
	
	self flag: #todo. "This is not good... is not 'persist if new' is 'persist if outdated' "
	target := (self repository isNew: anObject)
		ifTrue: [ 
			self ensurePersisted: anObject.
			(operations atObject: anObject) object ]
		ifFalse: [ anObject ].
	ref :=  aDescription referenceStrategy
		repository: repository; 
		operations: operations;
		referenceFrom: object to: target description: aDescription.
	^ (ref isKindOf: VOOperation)
		ifTrue: [ 
			operations add: ref.
			VONoValue  ]
		ifFalse: [ ref ]