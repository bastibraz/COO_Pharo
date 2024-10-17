Class {
	#name : 'BlIntegerInputElementTest',
	#superclass : 'TestCase',
	#category : 'BlocExercice',
	#package : 'BlocExercice'
}

{ #category : 'tests' }
BlIntegerInputElementTest >> testChildrenAreSet [ 

	| inputElem |
	inputElem := BlIntegerInputElement new.
	self assert: inputElem children size equals: 4
]

{ #category : 'tests' }
BlIntegerInputElementTest >> testLauchApplication [
| anInput space |
anInput := BlIntegerInputElement new.
anInput transformDo: [ :c | c translateBy: 200 @ 200 ].
space := BlSpace new.
space root
    background: Color purple;  "Définir la couleur de fond de l'espace"
    layout: BlFlowLayout horizontal.  "Définir le layout de l'espace"
space root addChild: anInput.
space show.


]
