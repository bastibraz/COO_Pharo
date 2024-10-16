Class {
	#name : 'Terrain',
	#superclass : 'Tile',
	#instVars : [
		'Ati',
		'Dti',
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
Terrain >> ati: anObject [

	ati := anObject
]

{ #category : 'accessing' }
Terrain >> dti [

	^ dti
]

{ #category : 'accessing' }
Terrain >> dti: anObject [

	dti := anObject
]
