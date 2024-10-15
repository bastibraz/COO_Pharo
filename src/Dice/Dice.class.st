"
La classe Dice représente un dé avec un nombre donné de faces, qui peut être lancé pour obtenir un nombre aléatoire.
"
Class {
	#name : 'Dice',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'Dice' }
Dice class >> withFaces: aNumber [

	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance
]

{ #category : 'accessing' }
Dice >> faces [
	^ faces
]

{ #category : 'accessing' }
Dice >> faces: aNumber [
    faces := aNumber.
]

{ #category : 'initialization' }
Dice >> initialize [
    super initialize.
    faces := 6.
]

{ #category : 'printing' }
Dice >> printOn: aStream [
    super printOn: aStream.
    aStream
        nextPutAll: ' (';
        print: faces;
        nextPutAll: ')'.
]

{ #category : 'Dice' }
Dice >> roll [
    ^ faces atRandom.
]
