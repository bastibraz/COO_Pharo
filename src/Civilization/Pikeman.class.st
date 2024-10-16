Class {
	#name : 'Pikeman',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Pikeman >> initialize [

	super initialize.
	self ap: 5.
	self dp: 20.
	self hp: 100.
	self xp: 1
]
