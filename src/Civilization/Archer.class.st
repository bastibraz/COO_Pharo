Class {
	#name : 'Archer',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Archer >> initialize [

	super initialize.
	self ap: 20.
	self dp: 5.
	self hp: 100.
	self xp: 1
]
