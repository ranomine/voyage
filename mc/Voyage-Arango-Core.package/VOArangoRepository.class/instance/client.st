accessing
client
	^ client ifNil: [
		client := ArangoDBClient new
		baseUri: uri ]