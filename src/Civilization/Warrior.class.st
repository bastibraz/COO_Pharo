Class {
	#name : 'Warrior',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Warrior >> initialize [

	super initialize.
	self xp: 1.
	self ap: 10.
	self dp: 10.
	self hp: 100.
]

{ #category : 'as yet unclassified' }
Warrior >> receiveAttackFrom: anAttacker [

	^ anAttacker attackWarrior: self
]
