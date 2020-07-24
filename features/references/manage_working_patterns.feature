Feature: Identify Judicial Office Holder Working Patterns and allocate to hearing that they are working and available

  As a Solution
  I want to be able to identify a judicial office officer's daily and weekly working pattern.
  So that the hours worked each day and the days of the week worked can be applied to the scheduling and listing of hearings.

  Background:
    Given Multi-Day Hearing is created
    And   Single Full day Hearing is created
    And   Single Partial day Hearing is created
    And   a Judicial Holder is created

  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-901 @SLR-903 @SLR-798
  Scenario: Judicial Office Holders can only be allocated to hearings on days of the week that they are working and available
    Given I am on judicial office holder Page
    And   the judicial office holder works Monday to Friday
    And   the judicial office holder is Full Time
    When I navigate to the hearing schedule page
    And  I view a hearing that is on Monday within standard working hours
    Then  the judicial office holder can only be assigned to the matching hearing

  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-903 @SLR-798
  Scenario: Part Time Judicial Office Holders can only be allocated to hearings on day and time of the week that they are working and available
    Given I am on judicial office holder Page
    And   the judicial office holder is Part Time
    And   the judicial office holder works for 9AM to 2PM on Monday to Thursday
    When I navigate to the hearing schedule page
    And  I view a hearing that is on Tuesday at 11AM
    Then  the judicial office holder can only be assigned to the matching hearing

  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-901 @SLR-903 @SLR-798
  Scenario: Judicial Office Holders can NOT be allocated to hearings on days of the week that they are Not working
    Given I am on judicial office holder Page
    And   the judicial office holder works Monday to Friday
    And   the judicial office holder is Full Time
    When  I navigate to the hearing schedule page
    And   I view a hearing that is on Saturday within standard working hours
    Then  the judicial office holder can only be assigned to the matching hearing

  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-903 @SLR-798
  Scenario:Part Time Judicial Office Holders can NOT be allocated to hearings on day and time of the week that they are Not working
    Given I am on judicial office holder Page
    And   the judicial office holder is Part Time
    And   the judicial office holder works for 9AM to 2PM on Monday to Thursday
    When  I navigate to the hearing schedule page
    And   I view a hearing that is on Friday at 11AM
    Then  the judicial office holder can only be assigned to the matching hearing
