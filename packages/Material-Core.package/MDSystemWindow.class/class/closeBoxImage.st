properties
closeBoxImage
	
	|icon|
	MDIcon clearCache.
	icon := MDIcon ic_close.
	icon svgColor: (MDColorTheme currentTheme textColorOn: (MDColorTheme currentTheme primaryColor)).
	^ icon svg imageForm