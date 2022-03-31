as yet unclassified
testDeleteDocument
	document addToIndex: index.
	self assert: document hasId.
	self assert: document hasVersion.
	document deleteFromIndex: index.
	
	self should: [ index getDocument: document ] 
		raise: ZnHttpUnsuccessful
		withExceptionDo:[:ex |  self assert: ex response status = 404 ].