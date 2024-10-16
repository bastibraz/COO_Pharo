Class {
	#name : 'Flat',
	#superclass : 'Terrain',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Flat >> initialize [

	super initialize.
	self Ati: 0.
	self Dti: 0.

]
