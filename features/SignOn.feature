Feature: Sign on to Mercury Tours 

Scenario: Sign On with user and password wrongs
  Given I am on the Mercury Tours homepage
  And I enter my user and password wrongs
  When I press the "Sign-In" button
  Then the Sign On screen is show

Scenario: Sign On with user and password empty
  Given I am on the Mercury Tours homepage
  And I enter my user and password empty
  When I press the "Sign-In" button
  Then the Sign On screen is show
