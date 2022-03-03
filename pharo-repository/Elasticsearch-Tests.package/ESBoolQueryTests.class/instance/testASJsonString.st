tests-printing
testASJsonString
	| query1 query2 booleQuery |
	query1 := ESMatchPhraseQuery new.
	query1 query:'Tuna'.

	query2 := ESMatchQuery new.
	query2 query:'Tuna'.
	
	booleQuery := ESBoolQuery new.
	booleQuery should: {query1. query2}.
	booleQuery minimum_should_match: 1.
	
	self assert: booleQuery asJsonString equals: '{"bool":{"should":[{"match_phrase":{"_all":"Tuna"}},{"match":{"_all":"Tuna"}}],"minimum_should_match":1}}'.
	