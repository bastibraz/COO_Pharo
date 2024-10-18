Class {
	#name : 'Knight',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Knight >> damageFrom: anAttacker [

	^ anAttacker damageToKnight: self
]

{ #category : 'as yet unclassified' }
Knight >> damageToArcher: aArcher [

	^ self ap * 2
]

{ #category : 'as yet unclassified' }
Knight >> damageToKnight: aKnight [

	^ self ap * 2
]

{ #category : 'as yet unclassified' }
Knight >> damageToWarrior: aWarrior [

	^ self ap * 2
]

{ #category : 'initialization' }
Knight >> initialize [

	super initialize.
	self xp: 1.
	apBase := 20.
	dpBase := 5.
	self hp: 100.
	self terrain: Flat new.
]

{ #category : 'initialization' }
Knight >> initialize: onTerrain [

	super initialize.
	self xp: 1.
	apBase := 20.
	dpBase := 5.
	self hp: 100.
	self terrain: onTerrain
]

{ #category : 'as yet unclassified' }
Knight >> receiveAttackFrom: anAttacker [

	^ anAttacker attackKnight: self
]
