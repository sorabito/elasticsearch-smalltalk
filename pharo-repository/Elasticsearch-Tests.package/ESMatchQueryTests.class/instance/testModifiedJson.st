tests-printing
testModifiedJson
	| query |
	query := ESMatchPhrasePrefixQuery new
		query: 'donkey';
		fuzziness: 0.5;
		field: 'message';
		yourself.
	self
		assert: query asJsonString
		equals: '{"match_phrase_prefix":{"message":{"query":"donkey","fuzziness":0.5}}}'