as yet unclassified
referenceFrom: from to: to description: description
	^ VOArangoLinkOperation new
		repository: repository;
		from: from;
		to: to;
		description: description;
		graphName: self graphName;
		properties: description allEdgeProperties;
		yourself