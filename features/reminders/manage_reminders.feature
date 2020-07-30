@SL0177 @FR-CMS-0013 @SLR-1312 @SL-4099 @SL-3712 #ID McgirrID TestStoryID TestID BusinessEpic

Feature: Add time-based reminders and alerts to user groups
  As A.. Listing Officer
  I want to be able to set a reminder/alert to complete an action for a case
  So that I can be reminded to check for an available session in a months time for a listing request

  Background:
    Given I am logged in as Listing Officer
    And   a case is existing
    And   a user group is existing

  @pending
  @manage_reminders
  @SL-3898 # Business Story
  Scenario: Save a Reminder for a user group
    Given I select the case for creating a new reminder
    And   I set the date for the reminder as today
    And   I set the time for the reminder as now
    And   I set the other details for the reminder
    And   I set the user group for the reminder alert
    When  I create the reminder
    And   log in as one of the user of the user group
    Then  I am reminded of the event
    And   I am able to end the reminder

  @pending
  @manage_reminders
  @SL-3898
  Scenario: Save a Reminder for a single user
    Given I select the case for creating a new reminder
    And   I set the date for the reminder as today
    And   I set the time for the reminder as now
    And   I set the other details for the reminder
    And   I set a user for the reminder alert
    When  I create the reminder
    And   log in as the user
    Then  I am reminded of the event
    And   I can extend the reminder
