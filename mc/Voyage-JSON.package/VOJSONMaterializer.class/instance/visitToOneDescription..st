visiting
visitToOneDescription: aDescription
	| objectValue |
	
	(self json includesKey: aDescription jsonName)
		ifTrue: [  
			(self jsonAt: aDescription jsonName)
				ifNotNil: [ :mongoValue | 
					objectValue := self readObject: mongoValue description: aDescription ]
				ifNil: [
					aDescription convertNull
						ifNotNil: [ :block | objectValue := block value ] ] ]
		ifFalse: [  
			(aDescription referenceStrategy class = VOEdgeReferenceStrategy) ifTrue: [
				objectValue := (self readEdges: aDescription) anyOne ] ].
	
	aDescription accessor
		write: objectValue	
		to: self object.