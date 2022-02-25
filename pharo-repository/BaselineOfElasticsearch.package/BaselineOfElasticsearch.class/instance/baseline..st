baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'ZincHTTPComponents' with: [
				spec repository: 'github://svenvc/zinc/repository';
					loads: #('Core') ].
							
			spec baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON/repository' ].
							
			spec
				package: 'Elasticsearch-Core' with: [ spec requires: #('ZincHTTPComponents') ];
				package: 'Elasticsearch-Tests' with: [ spec requires: #('Elasticsearch-Core') ].]