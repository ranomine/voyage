as yet unclassified
updateDocumentFor: anObject serialized: serialized
	| response document collectionName id |

	collectionName := self collectionNameFor: anObject class.

	response := self client
		updateDocument: serialized 
		collection: collectionName.
		
	document := (NeoJSONReader fromString: response contents) anyOne.
	id := document at: self fieldRootId.
	
	self cacheAt: id putVersion: (document at: self fieldVersion).
	
	^ document