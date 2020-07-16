# FeatureID  EpicID StoryID TestID
Feature: Create/Update/Identify Judicial Office Holder Retirement Date

  As a System Admin
  I want to be able to Create/Update/Identify the retirement date of a judicial office holder.
  So that the judicial office holder is not allocated to a hearing beyond the retirement date.

  @pending
  @manage_references
  @manage_retirement
  @SLR-330 @SLR-600 @SLR-909 @SLR-798
  Scenario: Create New Judicial Office Holder with Retirement Date
    Given the User is on create judicial office holder Page
    When I add the Retirement Date
    Then judicial office holder record is created

  @pending
  @manage_references
  @manage_retirement
  @SLR-330 @SLR-600 @SLR-910 @SLR-798
  Scenario: Update Judicial Office Holder Retirement Date
    Given the User is on update judicial office holder Page
    When I update the Retirement Date
    Then judicial office holder record is updated


  @pending
  @manage_references
  @manage_retirement
  @SLR-330 @SLR-600 @SLR-908 @SLR-798
  Scenario: Identify judicial office holder Retirement Date
    Given the User is on judicial office holder Page
    Then  judicial office holder Retirement Date can be identified

#    Validation
  @pending
  @manage_references
  @manage_retirement
  @SLR-330 @SLR-600 @SLR-909 @SLR-798
  Scenario Outline: Judicial Office Holder Retirement Date Validations
    Given the User is on create judicial office holder Page
    When I add the Retirement Date which is <beforeAfterSame> than hearing date
    Then judicial office holder <allowedNotAllowed> be assigned to a hearing
    Examples:
      | beforeAfterSame | allowedNotAllowed |
      | after           | Allowed           |
      | before          | NotAllowed        |
#      Check with BA
      | same            | NotAllowed        |
#     Retirement date added > hearing start date + duration (what happens if holder is now set to retire halfway through a long hearing?)
      | after           | NotAllowed        |
