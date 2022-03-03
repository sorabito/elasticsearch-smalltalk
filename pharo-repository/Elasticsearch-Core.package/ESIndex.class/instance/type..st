accessing
type: aByteString
	(self settings afterV6 and: [ self settings shouldIgnoreTypeField ]) ifTrue: [ ^self ].
	type := aByteString 