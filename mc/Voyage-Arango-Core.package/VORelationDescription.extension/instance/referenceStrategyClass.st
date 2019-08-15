*Voyage-Arango-Core
referenceStrategyClass
	^ self 
		propertyAt: #referenceStrategyClass
		ifAbsent: [ self defaultReferenceStrategyClass ]