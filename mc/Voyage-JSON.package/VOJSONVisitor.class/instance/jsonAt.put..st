private
jsonAt: aString put: anObject
	(anObject = VONoValue) ifFalse: [   
		self json 
			at: aString 
			put: anObject ]