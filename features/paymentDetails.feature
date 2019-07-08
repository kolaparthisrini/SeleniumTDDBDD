Feature: Feature: Conference room booking payment 
	This feature will test payment for room booking
	
Background: User has already filled all neccessery details in Room booking form 

Scenario: User will try to make payment for conference room booking with invalid set of information 
	Given User is on Payment page 
	
	When User Click 'Make Payment' button without entering 'Card holder name' 
 	Then 'Please fill the Card holder name' message should display
 	
 	
 	When User Click 'Make Payment' button without entering 'Debit card Number' 
 	Then 'Please fill the Debit card Number' message should display
 	
 	
 	When User Click 'Make Payment' button without entering 'Please fill the CVV Number' 
 	Then 'Please fill the CVV' message should display
 	
 	
 	When User Click 'Make Payment' button without entering 'Expiration month' 
 	Then 'Please fill expiration month' message should display
 	
 	
 	When User Click 'Make Payment' button without entering Expiration year' 
 	Then 'Please fill the expiration year' message should display
 	
 	
 	
 Scenario: User will try to make payment for conference room booking with Valid set of information
 	
 	
 	When User Click 'Make Payment' button after entering valid 'payment details' 
 	Then 'Conference Room Booking successfully done!!!' message should display
 	
 	
 