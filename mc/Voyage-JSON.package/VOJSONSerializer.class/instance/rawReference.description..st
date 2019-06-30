private raw
rawReference: anObject description: aDescription
	| jsonDictionary target ref |
	
	self flag: #todo. "This is not good... is not 'persist if new' is 'persist if outdated' "
	target := (self repository isNew: anObject)
		ifTrue: [ 
			self ensurePersisted: anObject.
			(operations atObject: anObject) object ]
		ifFalse: [ anObject ].
	
	ref :=  repository referenceFrom: object to: target description: aDescription.
	ref repository: repository.
	operations add: ref.
	^ nil
	"jsonDictionary := self referenceToDictionary: anObject.
	aDescription hasKind 
		ifTrue: [ jsonDictionary removeKey: self class fieldType ifAbsent: []]."
"	^ jsonDictionary"