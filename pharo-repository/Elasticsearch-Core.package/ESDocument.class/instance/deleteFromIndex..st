indexing
deleteFromIndex: anESIndex
	| response json |
	self index: anESIndex.
	response := self hasId
		ifTrue: [ self httpClient delete: self urlForIndexing  ]
		ifFalse: [self error ].
	json := self parseJsonFromString: response contents.
	self
		ifResponse: json
		isNotErrorThenDo: [ :someJson | 
			((someJson at: 'result' ifAbsent: ['']) = 'found' 
					or: [(someJson at: 'found' ifAbsent: [false])])
				ifTrue: [ 
					self id: (someJson at: '_id').
					self version: (someJson at: '_version') asNumber ] ]