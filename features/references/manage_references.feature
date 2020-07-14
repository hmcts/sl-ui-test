# FeatureID  EpicID StoryID TestID
Feature: Consume real time reference data about jurisdictions, services, case, hearing types and resources
  As A... System Admin
  I can Consume real time reference data about jurisdictions, services, case, hearing types and resources
  So that data consumed is always real time and no adverse impact on existing data in the system

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-888 @SLR-798
  Scenario Outline: create a new judicial office holder record
    Given the User is on Create Resources Page
    When  the User enters all the mandatory fields for judicial office holder
    Then  the judicial office holder record is created successfully
    And   the judicial office holder can be allocated to <type>
    Examples:
      | type    |
      | Session |
      | Listing |

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-888 @SLR-798
  Scenario: judicial office holder record cannot be created without mandatory information
    Given the User is on Resources Page
    When  the User does not enter all the mandatory fields for judicial office holder
    Then  the judicial office holder record is NOT created successfully

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-889 @SLR-798
  Scenario Outline: Update judicial office holders Personal Details
    Given the User is on Resources Page
    When  the User updates the mandatory or optional personal details
    Then  the judicial office holder record is updated successfully
    And   the judicial office holder can be allocated to <type>
    Examples:
      | type    |
      | Session |
      | Listing |

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-890 @SLR-798
  Scenario Outline: Delete judicial office holders Personal Details
    Given the User is on Resources Page
    When  the User deletes the judicial office holder record
    Then  the judicial office holder record is deleted
    And   the judicial office holder can NOT be allocated to <type>
    Examples:
      | type    |
      | Session |
      | Listing |

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-891 @SLR-798
  Scenario: Create a record of all the ticket types of judicial office holders
    Given the User is on Ticket Types Page
    When  the User enters all the mandatory fields for Ticket type
    Then  the Ticket type is created successfully
    And   the judicial office holder can be allocated to Ticket type

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-893 @SLR-798
  Scenario: Identify the Ticket Types of the Individual judicial office holder
    Given the User is on Ticket Types Page
    When  the User enters all the mandatory fields for Ticket type
    Then  the Ticket type is created successfully
    And   the judicial office holder can be allocated to Valid Ticket type
    And   the judicial office holder are assigned within their record


  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-894 @SLR-798
  Scenario: Update the Ticket Types of judicial office holders
    Given the User is on Ticket Types Page
    When  the User updates the fields for Ticket type
    Then  the Ticket type is updated successfully

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-906 @SLR-798
  Scenario: Identify Start and End Dates of Ticket Types
    Given the User is on Ticket Types Page
    And  Ticket types can be identified with Start and End Dates
    When  the judicial office holder is selected for hearing
    Then the Ticket dates is valid

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-895 @SLR-896 @SLR-798
  Scenario Outline: Identify Salaried vs Fee Paid judicial office holders
    Given the User is on Update judicial office holder Page
    When  the User updates to <payment> type
    Then  judicial office holder can be identified as <payment> type for hearing
    Examples:
      | payment  |
      | Salaried |
      | Fee      |

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-896 @SLR-798
  Scenario: Update Salaried or Fee Paid
    Given the User is on Update judicial office holder Page
    When the User updates to "Salaried" type
    And  the User updates to "Fee" type
    Then  judicial office holder is updated to "Fee" type

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-899 @SLR-798
  Scenario: Identify judicial office holder as both Salaried and Fee Paid
    Given the User is on Update judicial office holder Page
    When  the User view judicial office holder
    Then  judicial office holder can be identified as both Salaried and Fee Paid

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-901 @SLR-798
  Scenario: Identify judicial office holder Full Time / Part Time Employment
    Given the User is on Update judicial office holder Page
    When  the User view judicial office holder
    Then  judicial office holder can be identified as both Salaried and Fee Paid

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-902 @SLR-798
  Scenario Outline: Update Changes to judicial office holder Full Time or Part Time Status
    Given the User is on Update judicial office holder Page
    And   judicial office holder EmploymentType can be identified
    When  the User updates the Employment Type to <type>
    Then  judicial office holder record is updated
    Examples:
      | type      |
      | Full Time |
      | Part Time |

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-903 @SLR-798
  Scenario: Identify judicial office holder Daily and Weekly Working Patterns
    Given the User is on judicial office holder Page
    Then  judicial office holder Daily and Weekly Working Patterns can be identified
    And   will be used for hearing

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-904 @SLR-798
  Scenario: Update Changes to judicial office holder Working Patterns
    Given the User is on judicial office holder Page
    When  judicial office holder Daily and Weekly Working Patterns are updated
    Then  the judicial office holder record is updated successfully
    And   will be used for hearing

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-905 @SLR-798
  Scenario: Management of Working Patterns in Hours
    Given the User is on judicial office holder Page
    And  judicial office holder Daily and Weekly Working Patterns can be identified
    Then  the judicial office holder Working Patterns can be managed


  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-908 @SLR-798
  Scenario: Identify judicial office holder Retirement Date
    Given the User is on judicial office holder Page
    And  judicial office holder Retirement Date can be identified
    Then  the judicial office holder cannot be allocated to "Hearing" after Retirement Date

  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-909 @SLR-798
  Scenario: Create New Judicial Office Holder Retirement Date
    Given the User is on judicial office holder Page
    And  judicial office holder record can be created with Retirement Date
    Then  the judicial office holder cannot be allocated to "Hearing" after Retirement Date


  @pending
  @manage_references
  @SLR-330 @SLR-600 @SLR-910 @SLR-798
  Scenario: Update Judicial Office Holder Retirement Date
    Given the User is on judicial office holder Page
    And  judicial office holder Retirement Date can be updated
    Then  the judicial office holder cannot be allocated to "Hearing" after Retirement Date