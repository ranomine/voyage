private
jsonAt: aString 
	^ self 
		jsonAt: aString
		ifAbsent: [ nil ]