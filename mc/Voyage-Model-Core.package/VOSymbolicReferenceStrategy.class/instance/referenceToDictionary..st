private
referenceToDictionary: anObject
	| dictionary description |
	
	description := repository descriptionBuilder for: anObject class.
	dictionary := Dictionary new 
		at: self class fieldId put: (self keyOf: anObject);
		at: self class fieldCollection put: description collectionName;
		yourself. 
		
	description shouldRememberKind 
		ifTrue: [ dictionary at: self class fieldType put: anObject className ].
		
	^ dictionary