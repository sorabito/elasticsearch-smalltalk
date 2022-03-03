factory
newHttpClient
	| httpClientClassName |
	httpClientClassName := self settings httpClientClassName.
	httpClientClassName ifEmpty: [ ^ ESHTTPClient httpClient ].
	
	^ (Smalltalk at: httpClientClassName asSymbol) new
		hostName: self settings hostName;
		port: self settings port;
		yourself