accessing
atObject: anObject
	^ operations 
		detect: [  :each | (each isKindOf: VOSaveOperation) and: [ each object = anObject ] ]