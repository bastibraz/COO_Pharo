Class {
	#name : 'Archer',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Archer >> initialize [

	super initialize.
	self xp: 1.
	self ap: 20.
	self dp: 5.
	self hp: 100.
	
]

{ #category : 'as yet unclassified' }
Archer >> receiveAttackFrom: anAttacker [

	^ anAttacker attackArcher: self
]
