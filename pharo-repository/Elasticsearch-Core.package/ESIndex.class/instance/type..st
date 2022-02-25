accessing
type: aByteString
	(self settings supportV8 and: [ self settings shouldIgnoreTypeField ]) ifTrue: [ ^self ].
	type := aByteString 