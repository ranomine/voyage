execution
execute 
	| document |
	serialized 
		at: repository fieldRootId put: id asString.

	document := repository 
		createDocumentFor: object
		serialized: serialized.
