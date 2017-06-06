Feature: Flight finder Verify Select Flight

Scenario: See Flights with a registered user
    Given I am a user on the Mercury Tours homepage
    And I enter my user and password
    And I press the "Sign-In" button
    When I enter the required fields as show below here
      |tripType:  | roundtrip     |
      |passCount: | 1             |
      |fromPort:  | Acapulco      |
      |fromMonth: | January       |
      |fromDay:   | 1             |
      |toPort:    | Acapulco      |
      |toMonth:   | January       |
      |toDay:     | 5             |
      |servClass: | Coach         |
      |airline:   | No Preference |
    And Press continue
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
