as yet unclassified
referenceFrom: from to: to description: description
	| jsonDictionary |
	jsonDictionary := self referenceToDictionary: to.
	description hasKind 
		ifTrue: [ jsonDictionary removeKey: self class fieldType ifAbsent: [] ].
	^ jsonDictionary