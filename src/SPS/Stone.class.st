"
Stone win against Scissors but lose against Paper 
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

{ #category : 'play' }
Stone >> playAgainstPaper: aPaper [

	^ #paper
]

{ #category : 'play' }
Stone >> playAgainstScissors: aScissors [

	^ #scissors
]

{ #category : 'play' }
Stone >> playAgainstStone: aStone [

	^ #draw
]
