"
no comment
"
Class {
	#name : #USDollarRateSender,
	#superclass : #Object,
	#category : #USDollarRateTangerine
}

{ #category : #'as yet unclassified' }
USDollarRateSender class >> sendCurrentRate [
	| msgText |
	msgText := 
'From: lispercat@gmail.com
To: "lispercat@gmail.com"
Subject: US dollar rate:',
USDollarRateTangerineRetriever getCurrentRate asString.

	SMTPClient 
		deliverMailFrom: 'lispercat@gmail.com' 
		to: #('lispercat@gmail.com')
		text: msgText
		usingServer: 'smtp.teksavvy.com' 
]
