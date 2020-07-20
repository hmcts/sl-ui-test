# FeatureID  EpicID StoryID TestID
Feature: No Hearings after Judicial Office Holder Retirement Date

  As a System Admin
  I want to be able to set the retirement date of a judicial office holder
  So that the judicial office holder is not allocated to a hearing beyond the retirement date.

  Background:
    Given Hearing are setup

  @pending
  @manage_references
  @manage_retirement
  @SLR-330 @SLR-600 @SLR-910 @SLR-798
  Scenario: Judicial Office Holder Retirement Date falls after hearing date
    Given I have a existing multi-day hearing
    And  I am on judicial office holder Page
    When I add the Retirement Date which is after the hearing finish date
    Then judicial office holder can be assigned to a hearing

  @pending
  @manage_references
  @manage_retirement
  @SLR-330 @SLR-600 @SLR-910 @SLR-798
  Scenario: Judicial Office Holder Retirement Date before hearing date
    Given I have a existing multi-day hearing
    And  I am on judicial office holder Page
    When I add the Retirement Date which is before the hearing finish date
    Then judicial office holder can't be assigned to a hearing

  @pending
  @manage_references
  @manage_retirement
  @SLR-330 @SLR-600 @SLR-910 @SLR-798
  Scenario: Judicial Office Holder Retirement Date same as hearing date
    Given I have a existing multi-day hearing
    And  I am on judicial office holder Page
    When I add the Retirement Date which is same as the hearing finish date
    Then judicial office holder can be assigned to a hearing

  @pending
  @manage_references
  @manage_retirement
  @SLR-330 @SLR-600 @SLR-910 @SLR-798
  Scenario: Judicial Office Holder Retirement Date falls in-between a hearing
    Given I have a existing multi-day hearing
    And  I am on judicial office holder Page
    When I add the Retirement Date which falls in-between a multiple day hearing
    Then judicial office holder can't be assigned to a hearing





