"
no comments
"
Class {
	#name : #USDollarRateTangerineRetriever,
	#superclass : #Object,
	#category : #USDollarRateTangerine
}

{ #category : #'as yet unclassified' }
USDollarRateTangerineRetriever class >> getCurrentRate [
	| tmp1 tmp2 |
	tmp1 := Soup fromUrl: 'https://www.tangerine.ca/historicalrates/RatesHistory.xml'.
	tmp2 := (tmp1 findTag: [:arg1 | (arg1 type = 'selling' & arg1 currency) = 'USD']) children first.
	^((tmp2 findTag: 'value') attributeAt: 'en') asNumber 
]
