Class {
	#name : 'Unit',
	#superclass : 'Tile',
	#instVars : [
		'ap',
		'hp',
		'dp',
		'xp',
		'apBase',
		'dpBase'
	],
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Unit >> ap [

	ap := apBase * (0.5 * xp + 0.5)
]

{ #category : 'accessing' }
Unit >> apBase [
 ^ apBase.
]

{ #category : 'as yet unclassified' }
Unit >> attack: aDefender [
    | defenderDamage attackerDamage |
    defenderDamage := aDefender damageFrom: self.
    aDefender hp: aDefender hp - defenderDamage.
    attackerDamage := self damageFrom: aDefender.
    self hp: self hp - attackerDamage.
]

{ #category : 'as yet unclassified' }
Unit >> damageFrom: anDefender [

	self subclassResponsibility
]

{ #category : 'as yet unclassified' }
Unit >> damageToArcher: anArcher [

	^ self ap
]

{ #category : 'as yet unclassified' }
Unit >> damageToKnight: aKnight [
    ^ self ap
]

{ #category : 'as yet unclassified' }
Unit >> damageToPikeman: aPikeman [
    ^ self ap
]

{ #category : 'as yet unclassified' }
Unit >> damageToWarrior: aWarrior [
    ^ self ap
]

{ #category : 'accessing' }
Unit >> dp [

	dp := dpBase * (1 + ((xp - 1) * 0.75))
]

{ #category : 'accessing' }
Unit >> dpBase [

	^ dpBase
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

	xp := xp + 1.
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
