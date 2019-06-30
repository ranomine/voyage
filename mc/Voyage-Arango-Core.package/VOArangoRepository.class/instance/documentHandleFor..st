accessing
documentHandleFor: document
	^ ArangoDocumentHandle new
		repository: self;
		document: document 