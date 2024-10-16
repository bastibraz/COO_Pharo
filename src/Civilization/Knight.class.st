Class {
	#name : 'Knight',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Knight >> initialize [

	super initialize.
	self Ap: 20.
	self Dp: 5.
	self Hp: 100.
	self Xp: 1
]
