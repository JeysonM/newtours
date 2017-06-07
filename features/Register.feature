Feature: Mercury Tours Verify Registration
	In order to verify that the system does not allow empty data for registration
	As a user new
	I want register in the system

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
  Then the Flight Finder screen is show


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


Scenario: Register a user with the phone wrongs on site
  Given I am on the Mercury Tours homepage
  And I click the "Register" link
	When I enter the required fields as show below
		|First Name: 	    	|  Pedro            |
    |Last Name: 	    	|  Caceres          |
    |Phone: 	        	|  11_phone_234&    |
    |Email: 	        	|  pedro@gmail.com  |
    |Address:           |  Av. Libertador   |
    |City: 	            |  COCHABAMBA       |
    |State/Province:    |  COCHABAMBA       |
    |Postal Code: 	    |  9897             |
    |Country: 	        |  BOLIVIA	        |
    |User Name: 	    	|  Pedrerol         |
    |Password:          |  Pedro.123        |
    |Confirm Password:  |  Pedro.123        |
		And send my registration form
		Then the confirmation screen is show
		And my user name is "Pedrerol"

		Scenario: Register a user with the Email wrongs on site
		  Given I am on the Mercury Tours homepage
		  And I click the "Register" link
			When I enter the required fields as show below
				|First Name: 	    	|  Pedro            |
		    |Last Name: 	    	|  Caceres          |
		    |Phone: 	        	|  1234-567-12      |
		    |Email: 	        	|  pedroarrobapuntocom  |
		    |Address:           |  Av. Libertador   |
		    |City: 	            |  COCHABAMBA       |
		    |State/Province:    |  COCHABAMBA       |
		    |Postal Code: 	    |  9897             |
		    |Country: 	        |  BOLIVIA	        |
		    |User Name: 	    	|  Pedrerol         |
		    |Password:          |  Pedro.123        |
		    |Confirm Password:  |  Pedro.123        |
				And send my registration form
				Then the confirmation screen is show
				And my user name is "Pedrerol"

Scenario: Register a user with the Postal Code wrongs on site
	Given I am on the Mercury Tours homepage
	And I click the "Register" link
	When I enter the required fields as show below
		|First Name: 	    	|  Pedro            |
		|Last Name: 	    	|  Caceres          |
		|Phone: 	        	|  1234-567-12      |
		|Email: 	        	|  pedro@caceres.com  |
		|Address:           |  Av. Libertador   |
		|City: 	            |  COCHABAMBA       |
		|State/Province:    |  COCHABAMBA       |
		|Postal Code: 	    |  code32           |
		|Country: 	        |  BOLIVIA	        |
		|User Name: 	    	|  Pedrerol         |
		|Password:          |  Pedro.123        |
		|Confirm Password:  |  Pedro.123        |
		And send my registration form
		Then the confirmation screen is show
		And my user name is "Pedrerol"

Scenario: Register a user with password of one character on site
	Given I am on the Mercury Tours homepage
	And I click the "Register" link
	When I enter the required fields as show below
		|First Name: 	    	|  Pedro            |
		|Last Name: 	    	|  Caceres          |
		|Phone: 	        	|  1234-567-12      |
		|Email: 	        	|  pedro@caceres.com  |
		|Address:           |  Av. Libertador   |
		|City: 	            |  COCHABAMBA       |
		|State/Province:    |  COCHABAMBA       |
		|Postal Code: 	    |  9897             |
		|Country: 	        |  BOLIVIA	        |
		|User Name: 	    	|  Pedrerol         |
		|Password:          |  2        |
		|Confirm Password:  |  2        |
		And send my registration form
		Then the confirmation screen is show
		And my user name is "Pedrerol"
