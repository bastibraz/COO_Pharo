Class {
	#name : 'ColorBlocTest',
	#superclass : 'TestCase',
	#category : 'BlocExercice',
	#package : 'BlocExercice'
}

{ #category : 'tests' }
ColorBlocTest >> testColoredBloc [ 

	| space blocTest |
	space := BlSpace new.
	blocTest := ColoredBloc new.
	space root addChild: blocTest.

	space show
]

{ #category : 'tests' }
ColorBlocTest >> testColoredBloc2 [

	| space blocTest |
	space := BlSpace new. 
	blocTest := ColoredBloc withSize: 50.
	space root addChild: blocTest.

	space show
]

{ #category : 'tests' }
ColorBlocTest >> testColoredBlocInGrid [

	| space grid blocTest |
	space := BlSpace new.
	grid := Grid new.
	blocTest := ColoredBloc withSize: 50.
	grid addChild: blocTest .
	space root addChild: grid.

	space show
]

{ #category : 'tests' }
ColorBlocTest >> testFillGrid [

	| space grid |
	space := BlSpace new.
	grid := Grid new.
	grid fillGrid: 50.
	space root addChild: grid.

	space show
]
