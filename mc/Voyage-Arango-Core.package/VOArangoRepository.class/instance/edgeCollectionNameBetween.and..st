as yet unclassified
edgeCollectionNameBetween: fromClass and: toClass 
	^ String streamContents: [ :stream |
		stream 
			<< fromClass voyageCollectionName 
			<< '_' 
			<< toClass voyageCollectionName ]