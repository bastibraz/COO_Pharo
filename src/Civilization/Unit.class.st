Class {
	#name : 'Unit',
	#superclass : 'Tile',
	#instVars : [
		'Ad',
		'Dp',
		'Hp',
		'Xp',
		'ap',
		'hp',
		'dp',
		'xp'
	],
	#classVars : [
		'Ap'
	],
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Unit >> ap [

	^ ap
]

{ #category : 'as yet unclassified' }
Unit >> ap: anObject [

	ap := anObject
]

{ #category : 'as yet unclassified' }
Unit >> attack: anUnit [

	anUnit defend: self.
	hp := hp - anUnit ap
]

{ #category : 'as yet unclassified' }
Unit >> defend: anUnit [

	hp := hp - anUnit ap
]

{ #category : 'accessing' }
Unit >> dp [

	^ dp
]

{ #category : 'accessing' }
Unit >> dp: anObject [

	dp := anObject
]

{ #category : 'as yet unclassified' }
Unit >> hp [

	^ hp
]

{ #category : 'accessing' }
Unit >> hp: anObject [

	hp := anObject
]

{ #category : 'accessing' }
Unit >> xp [

	^ xp
]

{ #category : 'accessing' }
Unit >> xp: anObject [

	xp := anObject
]
