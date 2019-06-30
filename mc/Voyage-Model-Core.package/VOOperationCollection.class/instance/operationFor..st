accessing
operationFor: anObject
	^ operations
		detect: [ :each | (each isKindOf: VOSaveOperation) and: [ each object = anObject ]]
		ifNone: [ nil ]