Feature: Flight finder Verify Take Flights
  In order to verify that the system finds flights with the selected characteristics and I can book a flight
  As a registered user
  I want to pick a flight to buy


Background:
    Given I am a user on the Mercury Tours homepage
    And I enter my user and password
    And I press the "Sign-In" button
    And I enter the required fields as show below here
      |tripType:  | roundtrip     |
      |passCount: | 1             |
      |fromPort:  | Acapulco      |
      |fromMonth: | January       |
      |fromDay:   | 1             |
      |toPort:    | Portland      |
      |toMonth:   | January       |
      |toDay:     | 5             |
      |servClass: | Coach         |
      |airline:   | No Preference |
    And I Press continue

Scenario: See selected Flight prices with a registered user
    Given the going flights are shown on the screen as follows
      |Blue Skies Airlines 360  |Price: $270|
      |Blue Skies Airlines 361  |Price: $271|
      |Pangaea Airlines 362     |Price: $274|
      |Unified Airlines 363     |Price: $281|
    And the back flights are shown on the screen as follows
      |Blue Skies Airlines 630  |Price: $270|
      |Blue Skies Airlines 631  |Price: $273|
      |Pangea Airlines 632      |Price: $282|
      |Unified Airlines 633     |Price: $303|
    When I press the continue button down
    Then the flights and prices are shown on the screen as follows
      |Blue Skies Airlines 360  |Price: $270|
      |Blue Skies Airlines 630  |Price: $270|
    And the price with taxes is shown


Scenario: See purchased Flight transaction with a registered user
    Given the going flights are shown on the screen as follows
      |Blue Skies Airlines 360  |Price: $270|
      |Blue Skies Airlines 361  |Price: $271|
      |Pangaea Airlines 362     |Price: $274|
      |Unified Airlines 363     |Price: $281|
    And the back flights are shown on the screen as follows
      |Blue Skies Airlines 630  |Price: $270|
      |Blue Skies Airlines 631  |Price: $273|
      |Pangea Airlines 632      |Price: $282|
      |Unified Airlines 633     |Price: $303|
    When I press the continue button down
    And the flights and prices are shown on the screen as follows
      |Blue Skies Airlines 360  |Price: $270|
      |Blue Skies Airlines 630  |Price: $270|
    And the price with taxes is shown
    And I fill the buy form with the following values
      |passFirst0   | Pepito|
      |passLast0    | Perez |
      |creditnumber | 11223 |
      |cc_frst_name | Pepito|
      |cc_mid_name  | Pedro |
      |cc_last_name | Perez |
      |billAddress1 | 123 Av. America   |
      |delAddress1  | 123 Av. Santa Cruz|
    Then I press the Secure purchase button for confirm
    And the Itinerary booked message is shown
    And the values inserted for the are shown


Scenario: See purchased Flight transaction filling nothing on the purchase with a registered user
    Given the going flights are shown on the screen as follows
      |Blue Skies Airlines 360  |Price: $270|
      |Blue Skies Airlines 361  |Price: $271|
      |Pangaea Airlines 362     |Price: $274|
      |Unified Airlines 363     |Price: $281|
    And the back flights are shown on the screen as follows
      |Blue Skies Airlines 630  |Price: $270|
      |Blue Skies Airlines 631  |Price: $273|
      |Pangea Airlines 632      |Price: $282|
      |Unified Airlines 633     |Price: $303|
    When I press the continue button down
    And the flights and prices are shown on the screen as follows
      |Blue Skies Airlines 360  |Price: $270|
      |Blue Skies Airlines 630  |Price: $270|
    And the price with taxes is shown
    Then I press the Secure purchase button for confirm
    And the Itinerary booked message is shown
    And the values inserted for the are shown

Scenario: See purchased Flight transaction with the credit number wrongs of a registered user
    Given the going flights are shown on the screen as follows
      |Blue Skies Airlines 360  |Price: $270|
      |Blue Skies Airlines 361  |Price: $271|
      |Pangaea Airlines 362     |Price: $274|
      |Unified Airlines 363     |Price: $281|
    And the back flights are shown on the screen as follows
      |Blue Skies Airlines 630  |Price: $270|
      |Blue Skies Airlines 631  |Price: $273|
      |Pangea Airlines 632      |Price: $282|
      |Unified Airlines 633     |Price: $303|
    When I press the continue button down
    And the flights and prices are shown on the screen as follows
      |Blue Skies Airlines 360  |Price: $270|
      |Blue Skies Airlines 630  |Price: $270|
    And the price with taxes is shown
    And I fill the buy form with the following values
      |passFirst0   | Pepito|
      |passLast0    | Perez |
      |creditnumber | creditcard |
      |cc_frst_name | Pepito|
      |cc_mid_name  | Pedro |
      |cc_last_name | Perez |
      |billAddress1 | 123 Av. America   |
      |delAddress1  | 123 Av. Santa Cruz|
    Then I press the Secure purchase button for confirm
    And the Itinerary booked message is shown
    And the values inserted for the are shown
