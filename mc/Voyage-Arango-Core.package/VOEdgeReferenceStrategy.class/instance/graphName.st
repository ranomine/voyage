accessing
graphName
	^ graphName ifNil: [ 
		graphName := self defaultGraphName ]