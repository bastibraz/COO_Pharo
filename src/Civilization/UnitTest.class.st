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
	w1 Attack: w2.
	self assert: w1 Hp equals: 90.
	self assert: w2 Hp equals: 90
]
