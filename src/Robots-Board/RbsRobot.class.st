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

{ #category : 'initialization' }
RbsRobot >> initialize [
    super initialize.
    self direction: #north.
    self x: 1.
    self y: 1.
]
