Class {
	#name : 'Archer',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Archer >> damageFrom: anAttacker [
    ^ anAttacker damageToArcher: self
]

{ #category : 'initialization' }
Archer >> initialize [

	super initialize.
	self xp: 1.
	apBase := 20.
	dpBase := 5.
	self hp: 100.
	self terrain: Flat new.
]

{ #category : 'initialization' }
Archer >> initialize: onTerrain [

	super initialize.
	self xp: 1.
	apBase := 20.
	dpBase := 5.
	self hp: 100.
	self terrain: onTerrain
]

{ #category : 'as yet unclassified' }
Archer >> receiveAttackFrom: anAttacker [

	^ anAttacker attackArcher: self
]
