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
    And   the judicial office holder works for 8 hours on Monday
    When  the work pattern is viewed
    Then  judicial office holder Daily and Weekly Working Patterns can be identified
    And   can only be assigned to a hearing for Monday
    And   can not be assigned to a hearing for Tuesday to Friday


  @pending
  @manage_references
  @manage_working_patterns
  @SLR-330 @SLR-600 @SLR-903 @SLR-798
  Scenario: Identify judicial office holder Daily Patterns
    Given the User is on hearing Page
    And   the judicial office holder works for 8 hours on Monday to Thursday
    When  the work pattern is viewed
    Then  judicial office holder Daily and Weekly Working Patterns can be identified
    And   can be assigned to a hearing for Monday to Thursday only
    And   can not be assigned to a hearing for Friday


