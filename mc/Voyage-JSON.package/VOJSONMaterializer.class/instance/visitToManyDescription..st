visiting
visitToManyDescription: aDescription
	| objectValue |
	
	(self json includesKey: aDescription jsonName)
		ifTrue: [  
			(self jsonAt: aDescription jsonName)
				ifNotNil: [ :collection | 
					objectValue := self readCollection: collection description: aDescription ]
				ifNil: [
					aDescription convertNull
						ifNotNil: [ :block | objectValue := block value ] ] ]
		ifFalse: [  
			(aDescription referenceStrategy class = VOEdgeReferenceStrategy) ifTrue: [
				objectValue := self readEdges: aDescription ] ].
	
	aDescription accessor
		write: objectValue	
		to: self object.