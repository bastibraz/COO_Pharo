Class {
	#name : 'StonePaperScissorsTest',
	#superclass : 'TestCase',
	#category : 'SPS',
	#package : 'SPS'
}

{ #category : 'tests' }
StonePaperScissorsTest >> testScissorsAgainstPaperIsWinning [
    self assert: (Scissors new play: Paper new) equals: #scissors.
]

{ #category : 'tests' }
StonePaperScissorsTest >> testStoneAgainsStone [
	self assert: (Stone new play: Stone new) equals: #draw
]

{ #category : 'tests' }
StonePaperScissorsTest >> testStoneAgainstPaperIsWinning [
self assert: (Stone new play: Paper new) equals: #paper
]
