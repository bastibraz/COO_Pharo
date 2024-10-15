"
Stone win against Scissors and Lizzard but lose against Paper and Spock
"
Class {
	#name : 'Stone',
	#superclass : 'Object',
	#category : 'SPS',
	#package : 'SPS'
}

{ #category : 'play' }
Stone >> play: anotherTool [

	^ anotherTool playAgainstStone: self
]

{ #category : 'as yet unclassified' }
Stone >> playAgainstLizzard: aLizzard [

	^ #stone
]

{ #category : 'play' }
Stone >> playAgainstPaper: aPaper [

	^ #paper
]

{ #category : 'play' }
Stone >> playAgainstScissors: aScissors [

	^ #stone
]

{ #category : 'as yet unclassified' }
Stone >> playAgainstSpock: aSpock [

	^ #spock
]

{ #category : 'play' }
Stone >> playAgainstStone: aStone [

	^ #draw
]
