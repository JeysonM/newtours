Feature: Flight finder Verify Take Flights
  In order to verify that the system finds flights with the selected characteristics
  As a registered user
  I want to look for a flight


Scenario: See the economic class flights available from Acapulco to Portland and return
    Given I am a user on the Mercury Tours homepage
    And I enter my user and password
    And I press the "Sign-In" button
    When I enter the required fields as show below here
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
    Then the going flights are shown on the screen as follows
      |Blue Skies Airlines 360  |Price: $270|
      |Blue Skies Airlines 361  |Price: $271|
      |Pangaea Airlines 362     |Price: $274|
      |Unified Airlines 363     |Price: $281|
    And the back flights are shown on the screen as follows
      |Blue Skies Airlines 630  |Price: $270|
      |Blue Skies Airlines 631  |Price: $273|
      |Pangea Airlines 632      |Price: $282|
      |Unified Airlines 633     |Price: $303|

Scenario: See the First Class flights available from Frankfurt to Sydney and return
    Given I am a user on the Mercury Tours homepage
    And I enter my user and password
    And I press the "Sign-In" button
    When I enter the required fields as show below here
      |tripType:  | roundtrip     |
      |passCount: | 1             |
      |fromPort:  | Frankfurt     |
      |fromMonth: | January       |
      |fromDay:   | 1             |
      |toPort:    | Sydney        |
      |toMonth:   | January       |
      |toDay:     | 5             |
      |servClass: | First         |
      |airline:   | No Preference |
    And I Press continue
    Then the going flights are shown on the screen as follows
      |Blue Skies Airlines 360  |Price: $270|
      |Blue Skies Airlines 361  |Price: $271|
      |Pangaea Airlines 362     |Price: $274|
      |Unified Airlines 363     |Price: $281|
    And the back flights are shown on the screen as follows
      |Blue Skies Airlines 630  |Price: $270|
      |Blue Skies Airlines 631  |Price: $273|
      |Pangea Airlines 632      |Price: $282|
      |Unified Airlines 633     |Price: $303|

Scenario: See the flights available without changing any field on the request
    Given I am a user on the Mercury Tours homepage
    And I enter my user and password
    And I press the "Sign-In" button
    When I Press continue
    Then the going flights are shown on the screen as default
      |Blue Skies Airlines 360  |Price: $270|
      |Blue Skies Airlines 361  |Price: $271|
      |Pangaea Airlines 362     |Price: $274|
      |Unified Airlines 363     |Price: $281|
    And the back flights are shown on the screen as default
      |Blue Skies Airlines 630  |Price: $270|
      |Blue Skies Airlines 631  |Price: $273|
      |Pangea Airlines 632      |Price: $282|
      |Unified Airlines 633     |Price: $303|
