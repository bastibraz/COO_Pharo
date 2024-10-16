Class {
	#name : 'RbsRobot',
	#superclass : 'RbsAbstractRobot',
	#instVars : [
		'direction'
	],
	#category : 'Robots-Board',
	#package : 'Robots-Board'
}

{ #category : 'accessing' }
RbsRobot >> direction [
    ^ direction

]

{ #category : 'accessing' }
RbsRobot >> direction: aDirection [
    direction := aDirection.
]

{ #category : 'initialization' }
RbsRobot >> initialize [

	super initialize.
	self direction: #east.
]

{ #category : 'accessing' }
RbsRobot >> move: distance [
    | newX newY |
    newX := x.
    newY := y.
    direction caseOf: {
        [#north] -> [newY := y + distance].
        [#south] -> [newY := y - distance].
        [#east] -> [newX := x + distance].
        [#west] -> [newX := x - distance].
    } otherwise: [self error: 'Unknown direction'].
    self x: newX y: newY.
]
