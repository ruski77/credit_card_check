Feature: CreditCard check
	In order to validate a list of credit cards
	A user
	Should navigate to the welcome page
	
	Scenario: Validate a list of credit cards
		Given I am on the welcome page
		When I see a list of 8 credit cards
		Then I should see 5 valid cards and 3 invalid cards
		