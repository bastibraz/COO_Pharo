Class {
	#name : 'Unit',
	#superclass : 'Tile',
	#instVars : [
		'ap',
		'hp',
		'dp',
		'xp'
	],
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Unit >> ap [

	^ ap
]

{ #category : 'as yet unclassified' }
Unit >> ap: anInteger [

	ap := anInteger * (0.5 * xp + 0.5)
]

{ #category : 'as yet unclassified' }
Unit >> attack: anotherUnit [

	anotherUnit receiveAttackFrom: self
]

{ #category : 'accessing' }
Unit >> dp [

	^ dp
]

{ #category : 'accessing' }
Unit >> dp: anInteger [

	dp := anInteger * (0.5 * xp + 0.5)
]

{ #category : 'as yet unclassified' }
Unit >> hp [

	^ hp
]

{ #category : 'accessing' }
Unit >> hp: anInteger [

	hp := anInteger
]

{ #category : 'as yet unclassified' }
Unit >> lvUp [
	xp:=xp+1.
	self ap: ap.
	self dp: dp.
]

{ #category : 'as yet unclassified' }
Unit >> receiveAttackFrom: anAttacker [
self subclassResponsibility.
]

{ #category : 'as yet unclassified' }
Unit >> takeDamage: dmg [
    hp := hp - dmg.
]

{ #category : 'accessing' }
Unit >> xp [

	^ xp
]

{ #category : 'accessing' }
Unit >> xp: anInteger [

	xp := anInteger 
]
