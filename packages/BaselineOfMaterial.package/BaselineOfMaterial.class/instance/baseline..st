baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Material-Core';
				package: 'Material-Examples' with: [spec requires: #('Material-Core')];
				package: 'Material-Tests' with: [spec requires: #('Material-Core' . 'Material-Examples')];
				package: 'Animations' with: [spec repository: 'github://hpi-swa/animations:master/repository'];
				package: 'SVG-Morphic' with: [spec repository: 'http://www.squeaksource.com/SVGMorph'];
				yourself.
			spec
				group: 'default' with: #('Material-Core');
				group: 'tests' with: #('Material-Tests')];
				yourself