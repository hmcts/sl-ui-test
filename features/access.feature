Feature: Access Scheduling and Listings
  In order to access the application
  As a user or system
  I want to be able to use the credentials registered with it

  Scenario: successful user login and logout
    Given I am on the welcome screen
    And there is a login box
    And I submit my login credentials
    And I am on my personal dashboard
    When I click on Signout
    Then I am on the welcome screen

