Class {
	#name : 'UnitTest',
	#superclass : 'TestCase',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'tests' }
UnitTest >> testKnightlv2AtkPikemanlv3 [

	| k1 p2 |
	k1 := Knight new.
	p2 := Pikeman new.
	k1 lvUp.
	p2 lvUp.
	p2 lvUp.
	k1 attack: p2.
	self assert: k1 hp equals: 70.
	self assert: p2 hp equals: 70
]

{ #category : 'tests' }
UnitTest >> testKnightlv2AtkWarriorlv3 [

	| k1 w2 |
	k1 := Knight new.
	w2 := Warrior new.
	k1 lvUp.
	w2 lvUp.
	w2 lvUp.
	k1 attack: w2.
	self assert: k1 hp equals: 70.
	self assert: w2 hp equals: 40
]

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
	w1 attack: w2.
	self assert: w1 hp equals: 90.
	self assert: w2 hp equals: 90
]

{ #category : 'tests' }
UnitTest >> testWarriorlv2AtkWarrior [

	| w1 w2 |
	w1 := Warrior new.
	w2 := Warrior new.
	w1 lvUp.
	w1 attack: w2.
	self assert: w1 hp equals: 90.
	self assert: w2 hp equals: 85
]
