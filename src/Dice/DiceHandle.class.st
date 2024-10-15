"
Dice handle
"
Class {
	#name : 'DiceHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#classInstVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'adding' }
DiceHandle >> addDice: aDice [

	dice add: aDice.
]

{ #category : 'accessing' }
DiceHandle >> dice [

	^ dice
]

{ #category : 'Dice' }
DiceHandle >> diceNumber [
    ^ dice size.
]

{ #category : 'class initialization' }
DiceHandle >> initialize [
	super initialize.
	dice := OrderedCollection new
]
