Class {
	#name : 'Knight',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Knight >> initialize [

	super initialize.
	self xp: 1.
	self ap: 20.
	self dp: 5.
	self hp: 100.
]

{ #category : 'as yet unclassified' }
Knight >> receiveAttackFrom: anAttacker [

	^ anAttacker attackKnight: self
]
