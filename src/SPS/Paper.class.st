"
Paper win against Stone and Spock but lose against Scissors and Lizzard
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

{ #category : 'as yet unclassified' }
Paper >> playAgainstLizzard: aLizzard [

	^ #lizzard 
]

{ #category : 'play' }
Paper >> playAgainstPaper: aPaper [

	^ #draw
]

{ #category : 'play' }
Paper >> playAgainstScissors: aScissors [

	^ #scissors
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstSpock: aSpock [

	^ #paper
]

{ #category : 'play' }
Paper >> playAgainstStone: aStone [
    ^ #paper.
]
