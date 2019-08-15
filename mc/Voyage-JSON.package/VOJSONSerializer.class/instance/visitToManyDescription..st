visiting
visitToManyDescription: aDescription
	| jsonValue |
	
	(aDescription accessor read: self object) 
		ifNotNil: [ :objects | 
				(aDescription referenceStrategy class = VOEdgeReferenceStrategy)
					ifTrue: [ 
						objects do: [ :obj |
							self rawReference: obj description: aDescription ] ]
					ifFalse: [  
						jsonValue :=  self rawSerialize: objects description: aDescription.
						self 
							jsonAt: aDescription jsonName
							put: jsonValue ] ]