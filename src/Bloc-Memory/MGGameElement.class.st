Class {
	#name : 'MGGameElement',
	#superclass : 'Object',
	#instVars : [
		'memoryGame'
	],
	#category : 'Bloc-Memory',
	#package : 'Bloc-Memory'
}

{ #category : 'as yet unclassified' }
MGGameElement class >> penWithNumber [

	| aGameElement space |
	aGameElement := MGGameElement new
		                memoryGame: MGGame withNumbers;
		                yourself.
	space := BlSpace new
	space root addChild: aGameElement.
space root whenLayoutedDoOnce: [ space extent: aGameElement size ].
space show
]

{ #category : 'initialization' }
MGGameElement >> initialize [
super initialize.
self background: Color veryLightGray.
self layout: (BlGridLayout horizontal cellSpacing: 20).
self
constraintsDo: [ :aLayoutConstraints |
aLayoutConstraints horizontal fitContent.
aLayoutConstraints vertical fitContent ]
]

{ #category : 'accessing' }
MGGameElement >> memoryGame [
^ memoryGame
]

{ #category : 'accessing' }
MGGameElement >> memoryGame: aGameModel [
memoryGame := aGameModel.
self layout columnCount: memoryGame gridSize.
memoryGame availableCards
do: [ :aCard | self addChild: (MGCardElement new card: aCard) ]
]
