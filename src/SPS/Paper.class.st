"
Paper win against Stone but lose against scissors
"
Class {
	#name : 'Paper',
	#superclass : 'Object',
	#category : 'SPS',
	#package : 'SPS'
}

{ #category : 'play' }
Paper >> play: anotherTool [
    ^ anotherTool playAgainstPaper: self.
]

{ #category : 'play' }
Paper >> playAgainstPaper: aPaper [

	^ #draw
]

{ #category : 'play' }
Paper >> playAgainstScissors: aScissors [

	^ #scissors
]

{ #category : 'play' }
Paper >> playAgainstStone: aStone [
    ^ #paper.
]
