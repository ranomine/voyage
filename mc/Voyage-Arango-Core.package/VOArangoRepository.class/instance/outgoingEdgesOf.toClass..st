as yet unclassified
outgoingEdgesOf: anObject toClass: aClass 
	^ self client 
		readMany: (self edgeCollectionNameBetween: anObject class and: aClass) 
		where: { '_from' -> (self documentHandle: anObject) } asDictionary 
		