Class {
	#name : 'UnitTest',
	#superclass : 'TestCase',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'tests' }
UnitTest >> testLvUp [

	| w1 |
	w1 := Warrior new.
	self assert: w1 dp equals: 10.
	self assert: w1 ap equals: 10.
	self assert: w1 xp equals: 1.
	w1 lvUp.
	self assert: w1 dp equals: 15.
	self assert: w1 ap equals: 15.
	self assert: w1 xp equals: 2.
]

{ #category : 'tests' }
UnitTest >> testWarriorAtkWarrior [

	| w1 w2 |
	w1 := Warrior new.
	w2 := Warrior new.
	w1 lvUp.
	w1 attack: w2.
	self assert: w1 hp equals: 90.
	self assert: w2 hp equals: 85
]
