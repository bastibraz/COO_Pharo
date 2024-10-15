Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'tests' }
DieTest >> testCreationIsOk [
    self assert: (Dice withFaces: 20) faces equals: 20.
]

{ #category : 'tests' }
DieTest >> testInitializeIsOk [
	self assert: Dice new faces equals: 6
]

{ #category : 'tests' }
DieTest >> testRolling [
    | d |
    d := Dice new.
    10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ].
]
