Class {
	#name : 'Tile',
	#superclass : 'Object',
	#instVars : [
		'position',
		'board',
		'x',
		'y'
	],
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'protected' }
Tile >> basicPosition: aPosition [
	"A position is a x,y kind of object."

	"to probably remove and introduce basicX: and basicY:"

	x := aPosition x.
	y := aPosition y
]

{ #category : 'accessing' }
Tile >> board [

	^ board
]

{ #category : 'initialization' }
Tile >> initialize [

	super initialize.
	self basicPosition: 1 @ 1
]

{ #category : 'accessing' }
Tile >> position [

	^ x @ y
]

{ #category : 'accessing' }
Tile >> position: aPoint [

	self basicPosition: aPoint.
	self board atX: aPoint x atY: aPoint y put: self
]

{ #category : 'initialization' }
Tile >> setBoard: aBoard [

	board := aBoard
]

{ #category : 'accessing' }
Tile >> x [

	^ x
]

{ #category : 'accessing' }
Tile >> x: anInteger [

	x := anInteger
]

{ #category : 'instance creation' }
Tile >> x: xCoord y: yCoord [

	x := xCoord.
	y := yCoord.
	self board atX: x atY: y put: self
]

{ #category : 'accessing' }
Tile >> y [

	^ y
]

{ #category : 'accessing' }
Tile >> y: anInteger [

	y := anInteger
]
