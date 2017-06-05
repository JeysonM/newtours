Feature: Flight finder Verify Select Flight

Scenario: Select a Flight with a registered user
    Given I am on the Mercury Tours homepage
    And I enter my user and password
    And I press the "Sign-In" button
    When I enter the required fields as show below table
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
    And press continue
    Then the flights are shown on the screen
