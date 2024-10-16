Class {
	#name : 'Archer',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Archer >> initialize [

	super initialize.
	self Ap: 20.
	self Dp: 5.
	self Hp: 100.
	self Xp: 1
]
