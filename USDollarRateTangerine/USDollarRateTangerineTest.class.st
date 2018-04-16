"
No comments
"
Class {
	#name : #USDollarRateTangerineTest,
	#superclass : #TestCase,
	#category : #USDollarRateTangerine
}

{ #category : #tests }
USDollarRateTangerineTest >> testSendUSDollarRate [
	USDollarRateSender sendCurrentRate.
	self assert: true
]

{ #category : #tests }
USDollarRateTangerineTest >> testUSDollarRetriever [
	| tmp1 |
	tmp1 := USDollarRateTangerineRetriever getCurrentRate.
	self assert: tmp1 > 0
]
