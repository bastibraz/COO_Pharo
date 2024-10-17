Class {
	#name : 'Grid',
	#superclass : 'BlElement',
	#category : 'BlocExercice',
	#package : 'BlocExercice'
}

{ #category : 'as yet unclassified' }
Grid >> fillGrid: anInteger [

	| blocSize nbSquare|
	blocSize := anInteger.
	nbSquare := self size / blocSize. 
	1 to: nbSquare do: [:i |
    1 to: nbSquare do: [:j |
        | bloc |
		  bloc := ColoredBloc withSize: 50.
		self addChild: bloc.
        bloc position: ((i - 1) * blocSize) @ ((j - 1) * blocSize).
        self addChild: bloc.
    ].
].
]

{ #category : 'initialization' }
Grid >> initialize [

	super initialize.
	self geometry: BlRectangleGeometry new.
	self size: 500 @ 500.
	self background: Color white
]
