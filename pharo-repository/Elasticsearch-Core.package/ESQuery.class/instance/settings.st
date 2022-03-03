accessing
settings
	^ settings ifNil: [ settings := ESSettings default ]