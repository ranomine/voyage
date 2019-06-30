as yet unclassified
createDocumentFor: anObject serialized: serialized
	| response document collectionName id |

	collectionName := self collectionNameFor: anObject class.

	response := self client
		createDocument: serialized 
		collection: collectionName 
		createMissing: true.
		
	document := NeoJSONReader fromString: response contents.
	id := document at: self fieldRootId.
	
	self cacheAt: id put: anObject.
	self cacheAt: id putVersion: (document at: self fieldVersion).
	
	^ document