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

{ #category : 'arithmetic' }
DiceHandle >> + aDiceHandle [
    | newHandle |
    newHandle := DiceHandle new.
    newHandle dice addAll: self dice.
    newHandle dice addAll: aDiceHandle dice.
    ^ newHandle.
]

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

{ #category : 'Dice' }
DiceHandle >> roll [ 
| results |
    results := dice collect: [ :each | each roll ].
    ^ results inject: 0 into: [ :sum :each | sum + each ].
]
