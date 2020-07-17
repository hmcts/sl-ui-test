# FeatureID  EpicID StoryID TestID
Feature: Identify Judicial Office Holder Working Patterns and allocate to hearing that they are working and available

  As a Solution
  I want to be able to identify a judicial office officer's daily and weekly working pattern.
  So that the hours worked each day and the days of the week worked can be applied to the scheduling and listing of hearings.

  Background:
    Given Hearing are setup

  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-903 @SLR-798
  Scenario: Judicial Office Holders can only be allocated to hearings on days of the week that they are working and available
    Given I am on judicial office holder Page
    And   the judicial office holder works Monday to Friday
    When  the hearing matching with the criteria is found
    Then  the judicial office holder can only be assigned to the matching hearing

  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-903 @SLR-798
#    TODO : check for Part Time with BA
  Scenario: Part Time Judicial Office Holders can only be allocated to hearings on day and time of the week that they are working and available
    Given I am on judicial office holder Page
    And   the judicial office holder works for 9AM to 2PM on Monday to Thursday
    When  the hearing matching with the criteria is found
    Then  the judicial office holder can only be assigned to the matching hearing
