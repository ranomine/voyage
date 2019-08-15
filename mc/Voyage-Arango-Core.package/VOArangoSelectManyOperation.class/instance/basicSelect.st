execution
basicSelect

	^ repository client
		readMany: (repository collectionNameFor: queryClass) where: where limit: limit offset: offset