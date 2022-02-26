private
setNumberOfResultsFrom: response

	| totalDicOrInteger |
	totalDicOrInteger := (response at: 'hits') at: 'total'.
	numberOfResultsInIndex := totalDicOrInteger isInteger
		                          ifTrue: [ totalDicOrInteger ]
		                          ifFalse: [ 
		                          totalDicOrInteger
			                          at: 'value'
			                          ifAbsent: [ 0 ] ].
	^ numberOfResultsInIndex