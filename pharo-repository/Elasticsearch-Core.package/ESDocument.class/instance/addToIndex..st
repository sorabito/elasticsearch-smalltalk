indexing
addToIndex: anESIndex
	| response json |
	self index: anESIndex.
	response := self hasId
		ifTrue: [ self httpClient put: self urlForIndexing data: self messageJsonContent ]
		ifFalse: [ self httpClient post: self urlForIndexing data: self messageJsonContent ].
	json := self parseJsonFromString: response contents.
	self
		ifResponse: json
		isNotErrorThenDo: [ :someJson | 
			((someJson at: 'result' ifAbsent: ['']) = 'created' 
					or: [(someJson at: 'created' ifAbsent: [false])])
				ifTrue: [ 
					self id: (someJson at: '_id').
					self version: (someJson at: '_version') asNumber ] ]