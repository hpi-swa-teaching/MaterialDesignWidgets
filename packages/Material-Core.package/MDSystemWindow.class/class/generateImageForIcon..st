properties
generateImageForIcon: aSymbol
	
	|icon|
	MDIcon clearCache.
	icon := MDIcon perform: aSymbol.
	icon svgColor: (MDColorTheme currentTheme textColorOn: (MDColorTheme currentTheme primaryColor)).
	^ icon svg imageForm