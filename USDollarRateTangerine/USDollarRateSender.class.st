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
	SMTPClient 
		deliverMailFrom: 'lispercat@gmail.com' 
		to: #('lispercat@gmail.com')
		text: 
			'Subject: US dollar rate:',
			USDollarRateTangerineRetriever getCurrentRate asString 
		usingServer: 'smtp.teksavvy.com' 
]
