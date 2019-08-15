as yet unclassified
createDocumentFor: anObject serialized: serialized
	| handle collectionName |

	collectionName := self collectionNameFor: anObject class.

	handle := self client
		createDocument: serialized 
		collection: collectionName 
		createMissing: true.
	
	self cacheAt: handle key put: anObject.
	self cacheAt: handle key putVersion: (handle revision).
	
	^ handle