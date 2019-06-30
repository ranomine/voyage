accessing
referenceStrategy
	^ referenceStrategy ifNil: [ 
		referenceStrategy := VOEdgeReferenceStrategy new repository: self; yourself]