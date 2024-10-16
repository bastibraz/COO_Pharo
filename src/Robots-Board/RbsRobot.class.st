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

{ #category : 'as yet unclassified' }
RbsRobot >> executeCommandBased: aString [
    | commands |
    commands := aString lines.
    commands do: [ :command |
        self executeSingleCommand: command ].
]

{ #category : 'as yet unclassified' }
RbsRobot >> executeSingleCommand: aCommand [
    | parts keyword |
    parts := aCommand substrings.
    keyword := parts first.
    keyword caseOf: {
        ['dir'] -> [self direction: (parts second asSymbol)].
        ['mov'] -> [self move: (parts second asInteger)].
        ['base'] -> [self x: (parts second asInteger) y: (parts third asInteger)].
    } otherwise: [self error: 'Unknown command'].
]

{ #category : 'initialization' }
RbsRobot >> initialize [

	super initialize.
	self direction: #east.
	self x: 1.
	self y: 1
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

{ #category : 'accessing' }
RbsRobot >> position [
    ^ x @ y
]

{ #category : 'protected' }
RbsRobot >> setBoard: aBoard [
    board := aBoard.
]

{ #category : 'accessing' }
RbsRobot >> x [
    ^ x
]

{ #category : 'instance creation' }
RbsRobot >> x: xCoord y: yCoord [
    x := xCoord.
    y := yCoord.
    self board atX: xCoord atY: yCoord put: self.
]

{ #category : 'accessing' }
RbsRobot >> y [
    ^ y

]
