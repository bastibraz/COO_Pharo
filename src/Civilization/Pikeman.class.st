Class {
	#name : 'Pikeman',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Pikeman >> initialize [

	super initialize.
	self Ap: 5.
	self Dp: 20.
	self Hp: 100.
	self Xp: 1
]
