Class {
	#name : 'MGCardElement',
	#superclass : 'BlElement',
	#instVars : [
		'card',
		'backElement',
		'frontElement'
	],
	#category : 'Bloc-Memory-Elements',
	#package : 'Bloc-Memory',
	#tag : 'Elements'
}

{ #category : 'as yet unclassified' }
MGCardElement >> backgroundPaint [
"Return a BlPaint that should be used as a background (fill)
of both back and face sides of the card. Colors are polymorphic
with BlPaint and therefore can be used too."
^ Color pink darker
]

{ #category : 'accessing' }
MGCardElement >> card [
^ card
]

{ #category : 'accessing' }
MGCardElement >> card: aCard [
card := aCard.
self fillUpFrontElement.
self showCardFace.
card announcer
when: MGCardFlippedAnnouncement
send: #showCardFace to: self;
when: MGCardDisappearAnnouncement
send: #onDisappear to: self
]

{ #category : 'as yet unclassified' }
MGCardElement >> cardExtent [
^ 80@80
]

{ #category : 'public' }
MGCardElement >> click [
self parent memoryGame chooseCard: self card.
self showCardFace
]

{ #category : 'as yet unclassified' }
MGCardElement >> disappear [
self visibility: BlVisibility hidden
]

{ #category : 'as yet unclassified' }
MGCardElement >> fillUpFrontElement [
frontElement text: (card symbol asString asRopedText
fontSize: self fontPointSize;
foreground: self fontColor;
yourself)
]

{ #category : 'drawing' }
MGCardElement >> fontColor [
^ Color white
]

{ #category : 'comparing' }
MGCardElement >> fontPointSize [

	^ 50
]

{ #category : 'initialization' }
MGCardElement >> initialize [
super initialize.
self initializeBackElement.
self initializeFrontElement.
self size: self cardExtent.
self layout: BlLinearLayout new alignCenter.
self background: self backgroundPaint.
self geometry: (BlRoundedRectangleGeometry cornerRadius: 12).
self card: (MGCard new symbol: $a).
self addEventHandlerOn: BlClickEvent do: [ :anEvent | self click ]
]

{ #category : 'initialization' }
MGCardElement >> initializeBackElement [

	backElement := BlElement new
		               background: self class cardbackForm;
		               size: self cardExtent;
		               yourself
]

{ #category : 'initialization' }
MGCardElement >> initializeFrontElement [
frontElement := BlTextElement new
]

{ #category : 'as yet unclassified' }
MGCardElement >> onDisappear [
| vanish enlarge minimize disappear |
enlarge := BlTransformAnimation scale: 1.15 @ 1.15.
enlarge
absolute;
easing: BlEasing bounceOut;
duration: 0.5 seconds.
vanish := BlOpacityAnimation new
opacity: 0;
duration: 0.35 seconds.
minimize := BlTransformAnimation scale: 0.01 @ 0.01.
minimize
absolute;
easing: BlEasing linear;
duration: 0.35 seconds.
disappear := BlParallelAnimation withAll: { vanish . minimize }.
self addAnimation: (BlSequentialAnimation withAll: { enlarge.
disappear })
]

{ #category : 'as yet unclassified' }
MGCardElement >> onFlippedBack [
| animation |
animation := BlTransformAnimation scale: 1@1.
animation
absolute;
easing: BlEasing bounceOut;
duration: 0.35 seconds.
self addAnimation: animation.
self showBackFace
]

{ #category : 'as yet unclassified' }
MGCardElement >> onFlippedFace [
| animation |
animation := BlTransformAnimation scale: 0.85 @ 0.85.
animation
absolute;
easing: BlQuinticInterpolator default;
duration: 0.3 seconds.
self addAnimation: animation.
self showFrontFace
]

{ #category : 'as yet unclassified' }
MGCardElement >> showBackFace [
self removeChildren.
self addChild: backElement
]

{ #category : 'as yet unclassified' }
MGCardElement >> showCardFace [
card isFlipped
ifTrue: [ self onFlippedFace ]
ifFalse: [ self onFlippedBack ]
]

{ #category : 'as yet unclassified' }
MGCardElement >> showFrontFace [
self removeChildren.
self addChild: frontElement
]
