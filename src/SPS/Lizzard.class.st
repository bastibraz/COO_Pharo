"
Lizzard win against Paper and Spock but lose against Scissors and Stone
"
Class {
	#name : 'Lizzard',
	#superclass : 'Object',
	#category : 'SPS',
	#package : 'SPS'
}

{ #category : 'play' }
Lizzard >> play: anotherTool [

	^ anotherTool playAgainstLizzard: self
]

{ #category : 'as yet unclassified' }
Lizzard >> playAgainstLizzard: aLizzard [

	^ #draw
]

{ #category : 'play' }
Lizzard >> playAgainstPaper: aPaper [

	^ #lizzard
]

{ #category : 'play' }
Lizzard >> playAgainstScissors: aScissors [

	^ #scissors
]

{ #category : 'as yet unclassified' }
Lizzard >> playAgainstSpock: aSpock [

	^ #lizzard 
]

{ #category : 'play' }
Lizzard >> playAgainstStone: aStone [

	^ #stone
]
