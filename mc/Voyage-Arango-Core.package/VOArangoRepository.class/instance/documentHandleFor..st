accessing
documentHandleFor: document
	^ ArangoDocumentHandle new
		collection: (self collectionNameFor: document class);
		key: (self keyOf: document)