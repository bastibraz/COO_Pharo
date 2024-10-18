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
	apBase := 5.
	dpBase := 20.
	self hp: 100.
	self terrain: Flat new.
]

{ #category : 'initialization' }
Pikeman >> initialize: onTerrain [

	super initialize.
	self xp: 1.
	apBase := 5.
	dpBase := 20.
	self hp: 100.
	self terrain: onTerrain.
]

{ #category : 'as yet unclassified' }
Pikeman >> receiveAttackFrom: anAttacker [

	^ anAttacker attackPikeman: self
]
