private
keyOf: anObject 
	^ (operations operationFor: anObject)
		ifNotNil: [ :op | op id ]
		ifNil: [  
			repository 
				keyOf: anObject 
				ifAbsent: [ VOError signal: 'Invalid reference' ] ]