as yet unclassified
execute
	| response |
	response := repository client 
		createEdgeFrom: (repository documentHandleFor: from)
		to: (repository documentHandleFor: to)
		inCollection: self edgeCollectionName
		forGraphNamed: graphName
		properties: properties
		createMissing: true.
