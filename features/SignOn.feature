Feature: Sign on to Mercury Tours
  In order to verify that the system allows sign on correctly
  As registered user
  I want sign in

Scenario: Find a flight with a register user
  Given I am on the Mercury Tours homepage
  And I enter my user and password
  When I press the "Sign-In" button
  Then the Fight Finder screen is show

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
