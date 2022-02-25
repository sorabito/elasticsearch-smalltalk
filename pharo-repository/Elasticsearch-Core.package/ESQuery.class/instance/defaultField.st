defaults
defaultField
	self settings supportV8 ifFalse: [ 
		^'_all'
	].
	self settings shouldWarnUsingAllField ifTrue: [ 
		| msg |
		msg := '!!ES: "all" field is used in {1}, instead of obsolete "_all" field.' format: {self className}.
		self traceCr: msg.
		Notification signal: msg.
	].
	^ 'all' 