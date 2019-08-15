persistence
basicSelectOne
	^ repository client
		readOne: (repository collectionNameFor: queryClass) where: where