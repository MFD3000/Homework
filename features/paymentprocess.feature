Feature: Payment Processor
	
	So that I can process payments for differenty product types uniquely
	As the payment receiver
	I want to distinquish payment types based on

Scenario: Check for a valid product type
	Given a product
	When I check the "type" against accepted product types
	Then the check should be "true"



