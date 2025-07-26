Class {
	#name : #SBSTableReport,
	#superclass : #WATableReport,
	#instVars : [
		'classes',
		'floatingHeader'
	],
	#category : #'Bootstrap4-Widgets-Components'
}

{ #category : #accessing }
SBSTableReport >> classes [
	^ classes
]

{ #category : #accessing }
SBSTableReport >> classes: anObject [
	classes := anObject
]

{ #category : #accessing }
SBSTableReport >> columns [
	
	^columns
]

{ #category : #rendering }
SBSTableReport >> configureTableTag: tableTag [

	
]

{ #category : #rendering }
SBSTableReport >> elementId [

	^'el-', self identityHash printStringHex asLowercase
]

{ #category : #rendering }
SBSTableReport >> renderContentOn: html [

	| tableTag |
	tableTag := 	html table.
	self configureTableTag: tableTag.
	tableTag
		id: (self elementId);
		class: 'table';
		class: self classes;
		with: [ html tableHead: [ self renderTableHeaderOn: html ].
			html tableFoot: [ self renderTableFooterOn: html ].
			html tableBody: [ self renderRowsOn: html ] ].

]

{ #category : #rendering }
SBSTableReport >> renderRowNumber: index item: row on: html [
	html tableRow
		with: [ columns do: [ :each | self renderColumn: each row: row on: html ] ]
]

{ #category : #rendering }
SBSTableReport >> rendererClass [ 
	^SBSHtmlCanvas 
]
