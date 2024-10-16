Class {
	#name : 'Pikeman',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Pikeman >> damageFrom: anAttacker [

	^ anAttacker damageToPikeman: self
]

{ #category : 'as yet unclassified' }
Pikeman >> damageToKnight: aKnight [
    ^ self ap * 2
]

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

	^ anAttacker attackWarrior: self
]
