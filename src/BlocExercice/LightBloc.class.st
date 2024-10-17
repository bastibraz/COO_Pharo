Class {
	#name : 'LightBloc',
	#superclass : 'BlElement',
	#instVars : [
		'circle',
		'glow'
	],
	#category : 'BlocExercice',
	#package : 'BlocExercice'
}

{ #category : 'adding' }
LightBloc >> addCircle [

	circle := BlElement new.
	circle geometry: BlEllipseGeometry new.
	circle size: 50 @ 50.
	circle background: Color yellow.
	circle position:
		self width - circle width / 2 @ (self height - circle height) / 2.
	self addChild: circle
]

{ #category : 'initialization' }
LightBloc >> initialize [

	super initialize.
	self geometry: BlRectangleGeometry new.
	self size: 50 @ 50.
	self background: Color random.
	self addCircle
]
