"
Scissors win against Paper and Lizzard but lose against Stone and Spock
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

{ #category : 'as yet unclassified' }
Scissors >> playAgainstLizzard: aLizzard [

	^ #scissors
]

{ #category : 'play' }
Scissors >> playAgainstPaper: aPaper [

	^ #scissors
]

{ #category : 'play' }
Scissors >> playAgainstScissors: aScissors [

	^ #draw
]

{ #category : 'as yet unclassified' }
Scissors >> playAgainstSpock: aSpock [

	^ #spock
]

{ #category : 'play' }
Scissors >> playAgainstStone: aStone [
    ^ #stone.
]
