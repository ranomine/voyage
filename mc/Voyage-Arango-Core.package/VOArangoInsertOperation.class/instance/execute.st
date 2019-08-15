execution
execute 
	serialized 
		at: repository fieldRootId put: id asString.

	handle := repository 
		createDocumentFor: object
		serialized: serialized.
