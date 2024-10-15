Class {
	#name : 'DieHandleTest',
	#superclass : 'TestCase',
	#classInstVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'tests' }
DieHandleTest >> testAddingTwiceTheSameDice [

	| handle |
	handle := DiceHandle new.
	handle addDice: (Dice withFaces: 6).
	self assert: handle diceNumber equals: 1.
	handle addDice: (Dice withFaces: 6).
	self assert: handle diceNumber equals: 2
]

{ #category : 'tests' }
DieHandleTest >> testCreationAdding [

	| handle |
	handle := DiceHandle new
		          addDice: (Dice withFaces: 6);
		          addDice: (Dice withFaces: 10);
		          yourself.
	self assert: handle diceNumber equals: 2
]
