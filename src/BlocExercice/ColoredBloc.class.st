Class {
	#name : 'ColoredBloc',
	#superclass : 'BlElement',
	#instVars : [
		'size'
	],
	#category : 'BlocExercice',
	#package : 'BlocExercice'
}

{ #category : 'as yet unclassified' }
ColoredBloc class >> withSize: anInteger [

	| bloc |
	bloc := self new.
	bloc size: anInteger.
	^bloc
]

{ #category : 'initialization' }
ColoredBloc >> initialize [

	super initialize.
	self geometry: BlRectangleGeometry new.
	self size: 10 @ 10.
	self background: Color random
]

{ #category : 'accessing' }
ColoredBloc >> size [ 
	^ size.
]

{ #category : 'accessing' }
ColoredBloc >> size: anInteger [

	size := anInteger 
]
