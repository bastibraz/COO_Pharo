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
"Attach a card model and subscribe to its announcements."
card := aCard.
self fillUpFrontElement.
self showCardFace.
]

{ #category : 'as yet unclassified' }
MGCardElement >> cardExtent [
^ 80@80
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
self size: self cardExtent.
self layout: BlLinearLayout new alignCenter.
self background: self backgroundPaint.
self geometry: (BlRoundedRectangleGeometry cornerRadius: 12).
self card: (MGCard new symbol: $a)
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
MGCardElement >> showBackFace [
self removeChildren.
self addChild: backElement
]

{ #category : 'as yet unclassified' }
MGCardElement >> showCardFace [
card isFlipped
ifTrue: [ self showFrontFace ]
ifFalse: [ self showBackFace ]
]

{ #category : 'as yet unclassified' }
MGCardElement >> showFrontFace [
self removeChildren.
self addChild: frontElement
]
