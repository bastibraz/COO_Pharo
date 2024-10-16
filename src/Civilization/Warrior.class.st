Class {
	#name : 'Warrior',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Warrior >> initialize [

	super initialize.
	self Ap: 10.
	self Dp: 10.
	self Hp: 100.
	self Xp: 1
]
