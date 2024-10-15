"
Spock win against Stone, Scissors but lose against Paper and Lizzard
"
Class {
	#name : 'Spock',
	#superclass : 'Object',
	#category : 'SPS',
	#package : 'SPS'
}

{ #category : 'play' }
Spock >> play: anotherTool [

	^ anotherTool playAgainstSpock: self
]

{ #category : 'as yet unclassified' }
Spock >> playAgainstLizzard: aLizzard [

	^ #lizzard 
]

{ #category : 'play' }
Spock >> playAgainstPaper: aPaper [

	^ #paper
]

{ #category : 'play' }
Spock >> playAgainstScissors: aScissors [

	^ #spock
]

{ #category : 'as yet unclassified' }
Spock >> playAgainstSpock: aSpock [

	^ #draw
]

{ #category : 'play' }
Spock >> playAgainstStone: aStone [

	^ #spock
]
