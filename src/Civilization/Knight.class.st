Class {
	#name : 'Knight',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Knight >> initialize [

	super initialize.
	self ap: 20.
	self dp: 5.
	self hp: 100.
	self xp: 1
]
