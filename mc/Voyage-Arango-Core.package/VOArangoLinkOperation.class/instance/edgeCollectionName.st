as yet unclassified
edgeCollectionName
	^ String streamContents: [ :stream |
			stream 
				nextPutAll: (repository collectionNameFor: from class);
				nextPut: $-;
				nextPutAll: (repository collectionNameFor: to class) ]