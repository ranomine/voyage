execution
execute
	| response document |
	serialized 
		at: repository fieldRootId put: id asString.

	response := repository
		updateDocumentFor: object 
		serialized: serialized.

	document := (NeoJSONReader fromString: response contents) anyOne.