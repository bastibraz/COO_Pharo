Class {
	#name : 'Grid',
	#superclass : 'BlElement',
	#category : 'BlocExercice',
	#package : 'BlocExercice'
}

{ #category : 'initialization' }
Grid >> initialize [

	super initialize.
	self geometry: BlRectangleGeometry new.
	self size: 500 @ 500.
	self background: Color white
]
