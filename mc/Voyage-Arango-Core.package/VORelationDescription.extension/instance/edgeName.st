*Voyage-Arango-Core
edgeName
	^ self
		propertyAt: #edgeName
		ifAbsent: [ self attributeName ]