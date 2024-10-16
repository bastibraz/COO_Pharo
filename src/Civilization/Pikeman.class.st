Class {
	#name : 'Pikeman',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Pikeman >> initialize [

	super initialize.
	self xp: 1.
	self ap: 5.
	self dp: 20.
	self hp: 100.
]

{ #category : 'as yet unclassified' }
Pikeman >> receiveAttackFrom: anAttacker [

	^ anAttacker attackPikeman: self
]
