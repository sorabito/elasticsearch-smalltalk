accessing
shouldWarnUsingAllField
	^ self at: #shouldWarnUsingAllField ifAbsentPut: [ false ]