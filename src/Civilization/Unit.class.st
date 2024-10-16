Class {
	#name : 'Unit',
	#superclass : 'Tile',
	#instVars : [
		'Ad',
		'Dp',
		'Hp',
		'Xp'
	],
	#classVars : [
		'Ap'
	],
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Unit >> Ap [
	^Ap
]

{ #category : 'as yet unclassified' }
Unit >> Ap: anObject [

	Ap := anObject
]

{ #category : 'as yet unclassified' }
Unit >> Attack: anUnit [
	anUnit Defend: self.
	Hp := Hp - anUnit Ap 
]

{ #category : 'as yet unclassified' }
Unit >> Defend: anUnit [

	Hp := Hp - anUnit Ap
]

{ #category : 'accessing' }
Unit >> Dp [
	^Dp
]

{ #category : 'accessing' }
Unit >> Dp: anObject [

	Dp := anObject
]

{ #category : 'as yet unclassified' }
Unit >> Hp [
	^Hp
]

{ #category : 'accessing' }
Unit >> Hp: anObject [

	Hp := anObject
]

{ #category : 'accessing' }
Unit >> Xp [
	^Xp
]

{ #category : 'accessing' }
Unit >> Xp: anObject [

	Xp := anObject
]
