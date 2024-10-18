Class {
	#name : 'MGGame',
	#superclass : 'Object',
	#instVars : [
		'availableCards',
		'chosenCards'
	],
	#category : 'Bloc-Memory-Model',
	#package : 'Bloc-Memory',
	#tag : 'Model'
}

{ #category : 'as yet unclassified' }
MGGame class >> withNumbers [
<sampleInstance>
^ self new initializeForSymbols: '12345678'

]

{ #category : 'accessing' }
MGGame >> availableCards [
^ availableCards
]

{ #category : 'as yet unclassified' }
MGGame >> cardsCount [
"Return how many cards there should be depending on grid size"
^ self gridSize * self gridSize
]

{ #category : 'as yet unclassified' }
MGGame >> chooseCard: aCard [
(self chosenCards includes: aCard)
ifTrue: [ ^ self ].
self chosenCards add: aCard.
aCard flip.
self shouldCompleteStep
ifTrue: [ ^ self completeStep ].
self shouldResetStep
ifTrue: [ self resetStep ]
]

{ #category : 'as yet unclassified' }
MGGame >> chosenCardMatch [
| firstCard |
firstCard := self chosenCards first.
^ self chosenCards allSatisfy: [ :aCard |
aCard isFlipped and: [ firstCard symbol = aCard symbol ] ]
]

{ #category : 'accessing' }
MGGame >> chosenCards [
^ chosenCards
]

{ #category : 'as yet unclassified' }
MGGame >> completeStep [
self chosenCards
do: [ :aCard | aCard disappear ];
removeAll.
]

{ #category : 'as yet unclassified' }
MGGame >> gridSize [
"Return grid size"
^ 4
]

{ #category : 'initialization' }
MGGame >> initialize [
super initialize.
availableCards := OrderedCollection new.
chosenCards := OrderedCollection new
]

{ #category : 'initialization' }
MGGame >> initializeForSymbols: aCollectionOfCharacters [
aCollectionOfCharacters size = (self cardsCount / self
matchesCount)
ifFalse: [ self error: 'Amount of characters must be equal to
possible all combinations' ].
aCollectionOfCharacters do: [ :aSymbol |
1 to: self matchesCount do: [ :i |
availableCards add: (MGCard new symbol: aSymbol) ] ].
availableCards := availableCards shuffled
]

{ #category : 'testing' }
MGGame >> matchesCount [
"How many chosen cards should match for them to disappear"
^ 2
]

{ #category : 'initialization' }
MGGame >> resetStep [
| lastCard |
lastCard := self chosenCards last.
self chosenCards
allButLastDo: [ :aCard | aCard flip ];
removeAll;
add: lastCard
]

{ #category : 'asserting' }
MGGame >> shouldCompleteStep [
^ self chosenCards size = self matchesCount
and: [ self chosenCardMatch ]
]

{ #category : 'asserting' }
MGGame >> shouldResetStep [
^ self chosenCards size > self matchesCount
]
