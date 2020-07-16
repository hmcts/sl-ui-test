# FeatureID  EpicID StoryID TestID
Feature: Identify Judicial Office Holder Working Patterns

  As a Solution
  I want to be able to identify a judicial office officer's daily and weekly working pattern.
  So that the hours worked each day and the days of the week worked can be applied to the scheduling and listing of hearings.

#    Validations
  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-903 @SLR-798
  Scenario: Identify judicial office holder Daily Patterns
    Given the User is on hearing Page
    And the judicial office holder works for 8 hours on Monday
    When the work pattern is viewed
    Then  judicial office holder Daily and Weekly Working Patterns can be identified
    And can be assigned to a hearing for Monday

  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-903 @SLR-798
  Scenario: Identify judicial office holder Daily Patterns
    Given the User is on hearing Page
    And the judicial office holder works for 8 hours on Monday to Thursday
    When the work pattern is viewed
    Then  judicial office holder Daily and Weekly Working Patterns can be identified
    And can be assigned to a hearing for Monday to Thursday

  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-903 @SLR-798
  Scenario: Identify judicial office holder Daily Patterns
    Given the User is on hearing Page
    And the judicial office holder works for 8 hours on Monday to Thursday
    When the work pattern is viewed
    Then  judicial office holder Daily and Weekly Working Patterns can be identified
    And can not be assigned to a hearing for Friday


  @pending
  @manage_references
  @manage_retirement
  @SLR-330 @SLR-600 @SLR-904 @SLR-798
  Scenario: Create judicial office holder Working Patterns
    Given the User is on create judicial office holder Page
    When I update the Working Patterns
    Then judicial office holder record is created

  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-904 @SLR-798
  Scenario: Update Changes to judicial office holder Working Patterns
    Given the User is on update judicial office holder Page
    When I update the Working Patterns
    Then judicial office holder record is updated

  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-903 @SLR-798
  Scenario: Identify judicial office holder Daily and Weekly Working Patterns
    Given the User is on judicial office holder Page
    Then  judicial office holder Daily and Weekly Working Patterns can be identified





