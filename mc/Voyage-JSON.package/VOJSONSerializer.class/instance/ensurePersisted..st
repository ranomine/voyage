private
ensurePersisted: anObject

	| c |
	(operations hasOperationFor: anObject) ifFalse:[
		c := self serialize: anObject ].	
	^ operations atObject: anObject
	"It might be first nil, but added in serialize call... should we optimise this? it is worthy?"
"	^ self rawFuture: (operations atObject: anObject)"