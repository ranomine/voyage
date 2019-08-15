private
jsonAt: aString ifAbsent: aBlock 
	^ self json 
		at: aString
		ifAbsent: aBlock