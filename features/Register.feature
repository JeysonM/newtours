Feature: Mercury Tours Verify Registration
	In order to verify that the system does not allow empty data for registration
	As a user new
	I want register in the system

Scenario: Register a user on site
	Given I am on the Mercury Tours homepage
	And I click the "Register" link
	When I enter the required fields as show below
		|First Name: 	    	| juan               |
    |Last Name: 	    	| Perez              |
    |Phone: 	        	| 1234-567-12        |
    |Email: 	        	| juan@perez.com    |
    |Address:           | Av. America #123   |
    |City: 	            | Cochabamba         |
    |State/Province:    | Cochabamba         |
    |Postal Code: 	    | 9897               |
    |Country: 	        | BOLIVIA            |
    |User Name: 	    	| Rosquete             |
    |Password:          | Rosquete123            |
    |Confirm Password:  | Rosquete123            |
		And send my registration form
		Then the confirmation screen is show
		And my user name is "Rosquete"


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


Scenario: Register a user with the confirm pass different that pass on site
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
    |Password:          | juanito123        |
    |Confirm Password:  | juanito        |
		And send my registration form
		Then the confirmation screen is show
		And my user name is ""
