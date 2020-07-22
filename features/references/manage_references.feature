Feature: Consume real time reference data about jurisdictions, services, case, hearing types And resources

  As A... System Admin
  I can Consume real time reference data about jurisdictions, services, case, hearing types And resources
  So that data consumed is always real time And no adverse impact on existing data in the system

  @pending
  @smoke
  @SLR-330 @SLR-600 @SLR-908 @SLR-909 @SLR-904 @SLR-905 @SLR-798
  @SLR-888 @SLR-889 @SLR-890 @SLR-902 @895 @SLR-891 @SLR-894
  Scenario: View/Create/Update Judicial Office Holder
  Given I am on judicial office holder Page
  And I add the Retirement Date
  And I add them as Part Time
  And I add the Working Patterns
  And I add Payment Details as Salary
  And I add all other personal details
  And I add the ticket types
  And judicial office holder record is created
  And I update the Retirement Date
  And I update them as Full Time
  And I update the Working Patterns
  And I update Payment Details as Fee
  And I update all the personal details
  And I update the ticket types
  And the record is updated
  When I delete the record
  Then the record is deleted

  @pending
  @smoke
  @SLR-330 @SLR-888 @SLR-889 @SLR-798
  Scenario: Judicial Office Holder validation
    Given I am on judicial office holder Page
    When  all mandatory fields are not entered
    Then  the judicial office holder the record is not saved
