accessing
type: aString
	self settings afterV6 ifTrue: [ ^self ].
	^ self modifiers at: 'type' put: aString