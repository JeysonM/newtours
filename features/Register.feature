Feature: Mercury Tours Verify Registration

Scenario: Register a user on site
	Given I am on the Mercury Tours homepage
	And I click the "Register" link
	When I enter the required fields as show below
		|First Name: 	    	| Pepito             |
    |Last Name: 	    	| Perez              |
    |Phone: 	        	| 1234-567-12        |
    |Email: 	        	| pepe@pepazo.com    |
    |Address:           | Av. America #123   |
    |City: 	            | Cochabamba         |
    |State/Province:    | Cochabamba         |
    |Postal Code: 	    | 9897               |
    |Country: 	        | BOLIVIA            |
    |User Name: 	    	| Pepazo             |
    |Password:          | ILoveQA            |
    |Confirm Password:  | ILoveQA            |
		And send my registration form
		Then the confirmation screen is show
		And my user name is "Pepazo"
		

Scenario: Register a user on site
	Given I am on the Mercury Tours homepage
	And I click the "SIGN-ON" link
	And I enter my user and password
	When I press the Submit button
    Then the Fight Finder screen is show

Scenario: Register a user empty on site
  Given I am on the Mercury Tours homepage
  And I click the "Register" link
	When I enter the required fields as show below
		|First Name: 	    	|         |
    |Last Name: 	    	|         |
    |Phone: 	        	|         |
    |Email: 	        	|         |
    |Address:           |         |
    |City: 	            |         |
    |State/Province:    |         |
    |Postal Code: 	    |         |
    |Country: 	        | UNITED STATES        |
    |User Name: 	    	|         |
    |Password:          |         |
    |Confirm Password:  |         |
		And send my registration form
		Then the confirmation screen is show
		And my user name is ""
