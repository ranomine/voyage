accessing
documentHandle: anObject id: id
	^ String streamContents: [ :stream |
		stream
			nextPutAll: (self collectionNameFor: anObject class);
			nextPut: $/;
			nextPutAll: (id ifNil: [ 
				self keyOf: anObject ]) ]