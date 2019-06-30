as yet unclassified
referenceFrom: from to: to description: description
	^ VOArangoLinkOperation new
		from: from;
		to: to;
		description: description;
		graphName: self graphName;
		yourself