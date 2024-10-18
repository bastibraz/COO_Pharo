Class {
	#name : 'Hilly',
	#superclass : 'Terrain',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Hilly >> defendingImpactFor: anUnit attack: anotherUnit [

	(anotherUnit class equals: Knight)
		ifTrue: [ ^ 20 ]
]

{ #category : 'as yet unclassified' }
Hilly >> defendingImpactFor: anUnit attacking: anotherUnit [
    (anotherUnit class equals: Knight)
        ifTrue: [^20]
        ifFalse: [^10].
]

{ #category : 'initialization' }
Hilly >> initialize [

	super initialize.
	self ati: 0.
	self dti: 10
]
