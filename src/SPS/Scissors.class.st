"
Scissors win against Paper but lose against Stone
"
Class {
	#name : 'Scissors',
	#superclass : 'Object',
	#category : 'SPS',
	#package : 'SPS'
}

{ #category : 'play' }
Scissors >> play: anotherTool [
    ^ anotherTool playAgainstScissors: self.
]

{ #category : 'play' }
Scissors >> playAgainstPaper: aPaper [

	^ #scissors
]

{ #category : 'play' }
Scissors >> playAgainstScissors: aScissors [

	^ #draw
]

{ #category : 'play' }
Scissors >> playAgainstStone: aStone [
    ^ #stone.
]
