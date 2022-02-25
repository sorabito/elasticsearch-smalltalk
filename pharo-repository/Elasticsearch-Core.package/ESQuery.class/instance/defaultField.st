defaults
defaultField
	self settings supportV8 ifFalse: [ 
		^'_all'
	].
	self settings shouldWarnUsingAllField ifTrue: [ 
		| msg |
		msg := '!!ES obsolete default-field (all) is used in {1}' format: {self className}.
		self traceCr: msg.
		Notification signal: msg.
	].
	^ 'all' 