Class {
	#name : 'Hilly',
	#superclass : 'Terrain',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'initialization' }
Hilly >> initialize [

	super initialize.
	self ati: 0.
	self dti: 10
]
