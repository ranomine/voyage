as yet unclassified
referenceFrom: from to: to description: description
	| reference |
	reference := self referenceStrategy 
		referenceFrom: from to: to description: description.
	reference repository: self.
	^ reference