Class {
	#name : 'Warrior',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Warrior >> initialize [

	super initialize.
	self ap: 10.
	self dp: 10.
	self hp: 100.
	self xp: 1
]
