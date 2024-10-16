Class {
	#name : 'UnitTest',
	#superclass : 'TestCase',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'tests' }
UnitTest >> testWarriorAtkWarrior [

	| w1 w2 |
	w1 := Warrior new.
	w2 := Warrior new.
	w1 attack: w2.
	self assert: w1 hp equals: 90.
	self assert: w2 hp equals: 90
]
