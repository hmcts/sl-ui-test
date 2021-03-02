Feature: create a case
  As a user or system
  I want to be able to use the credentials registered with it
  So that I can create the application

  @E2E1
  Scenario: successful user login and logOut
    Given I am on add new page
    When I add all the valid details
    And I submit the data
    Then I case should be created successfully
