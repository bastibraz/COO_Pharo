Class {
	#name : 'Terrain',
	#superclass : 'Tile',
	#instVars : [
		'ati',
		'dti'
	],
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'accessing' }
Terrain >> ati [

	^ ati
]

{ #category : 'accessing' }
Terrain >> ati: anInteger [

	ati := anInteger
]

{ #category : 'as yet unclassified' }
Terrain >> defendingImpactFor: anUnit attack: anotherUnit [

	
]

{ #category : 'accessing' }
Terrain >> dti [

	^ dti
]

{ #category : 'accessing' }
Terrain >> dti: anInteger [

	dti := anInteger
]
