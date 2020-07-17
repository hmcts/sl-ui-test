# FeatureID  EpicID StoryID TestID
Feature: Consume real time reference data about jurisdictions, services, case, hearing types And resources

  As A... System Admin
  I can Consume real time reference data about jurisdictions, services, case, hearing types And resources
  So that data consumed is always real time And no adverse impact on existing data in the system

  @pending
  @smoke
  @SLR-330 @SLR-600 @SLR-908 @SLR-909 @SLR-904 @SLR-905 @SLR-798
  Scenario: View/Create/Update New Judicial Office Holder
  Given the User is on create judicial office holder Page
  And I add the Retirement Date
  And I add the Working Patterns
  And judicial office holder record is created
  And I update the Retirement Date
  And I update the Working Patterns
  And the record is updated
  When I delete the record
  Then the record is deleted


