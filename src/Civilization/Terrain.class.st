Class {
	#name : 'Terrain',
	#superclass : 'Tile',
	#instVars : [
		'Ati',
		'Dti'
	],
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'accessing' }
Terrain >> Ati [
	^Ati
]

{ #category : 'accessing' }
Terrain >> Ati: anObject [

	Ati := anObject
]

{ #category : 'accessing' }
Terrain >> Dti [

	^ Dti
]

{ #category : 'accessing' }
Terrain >> Dti: anObject [

	Dti := anObject
]
