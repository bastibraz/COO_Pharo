Class {
	#name : 'MGCardEventListener',
	#superclass : 'BlEventListener',
	#instVars : [
		'memoryGame'
	],
	#category : 'Bloc-Memory',
	#package : 'Bloc-Memory'
}

{ #category : 'mouse handlers' }
MGCardEventListener >> clickEvent: anEvent [
memoryGame chooseCard: anEvent currentTarget card
]
