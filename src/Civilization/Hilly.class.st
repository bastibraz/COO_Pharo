Class {
	#name : 'Hilly',
	#superclass : 'Terrain',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Hilly >> initialize [

	super initialize.
	self Ati: 0.
	self Dti: 10.
]
