"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message startingAt:
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count',
		'new'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'setter' }
Counter >> Counter [ 
| c |
c := Counter new count: 7.
c count
>>> 7
]

{ #category : 'accessing' }
Counter >> count [
	^ count
]

{ #category : 'accessing' }
Counter >> count: anInteger [
	
	count:= anInteger 
]

{ #category : 'accessing' }
Counter >> increment [
	count:=count+1
]
