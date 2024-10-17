Class {
	#name : 'Grid',
	#superclass : 'BlElement',
	#category : 'BlocExercice',
	#package : 'BlocExercice'
}

{ #category : 'as yet unclassified' }
Grid >> fillGrid: gridSize [
    1 to: gridSize do: [:i |
        1 to: gridSize do: [:j |
            | bloc |
            bloc := ColoredBloc new.
            bloc position: ((i - 1) * 50) @ ((j - 1) * 50).
            self addChild: bloc.
        ].
    ].
]

{ #category : 'as yet unclassified' }
Grid >> fillGridWithLight: gridSize [
    1 to: gridSize do: [:i |
        1 to: gridSize do: [:j |
            | lightBloc |
            lightBloc := LightBloc new.
            lightBloc position: ((i - 1) * 50) @ ((j - 1) * 50).
            self addChild: lightBloc.
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
