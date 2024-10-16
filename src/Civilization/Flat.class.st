Class {
	#name : 'Flat',
	#superclass : 'Terrain',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Flat >> initialize [

	super initialize.
	self ati: 0.
	self dti: 0
]
