private
setResultsFrom: response
	| hits |
	self setNumberOfResultsFrom: response.
	hits := ((response at: 'hits') at: 'hits').
	hits
		doWithIndex: [ :eachJsonDocument :idx | self results at: idx + self indexOfFirstResult put: (ESDocument fromJson: eachJsonDocument inIndex: self index) ].
	numberOfHits := hits size.
	^self results copyFrom: 1 to: numberOfHits