visiting
visitToOneDescription: aDescription
	| jsonValue |

	(aDescription accessor read: self object) 
		ifNotNil: [ :element | 
			(aDescription referenceStrategy class = VOEdgeReferenceStrategy)
				ifTrue: [ ^ self rawReference: element description: aDescription ] 
				ifFalse: [  jsonValue := self rawSerialize: element description: aDescription ] ] .
	self 
		jsonAt: aDescription jsonName
		put: jsonValue