Class {
	#name : 'Warrior',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Warrior >> damageFrom: anAttacker [
    ^ anAttacker damageToWarrior: self
]

{ #category : 'initialization' }
Warrior >> initialize [

	super initialize.
	self xp: 1.
	apBase := 10.
	dpBase := 10.
	self hp: 100.
	self terrain: Flat new.
]

{ #category : 'initialization' }
Warrior >> initialize: onTerrain [

	super initialize.
	self xp: 1.
	apBase := 10.
	dpBase := 10.
	self hp: 100.
	self terrain: onTerrain 
]

{ #category : 'as yet unclassified' }
Warrior >> receiveAttackFrom: anAttacker [

	^ anAttacker attackWarrior: self
]
