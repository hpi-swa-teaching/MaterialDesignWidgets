animation
isVisibleTimeDone

	^ (self lastScrollTime copy addSeconds: self class durationToWaitUntilFadeOut) <= Time now