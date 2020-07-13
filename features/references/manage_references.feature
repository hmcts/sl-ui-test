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
  Scenario Outline: Update Judicial Office Holders Personal Details
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
  Scenario Outline: Delete Judicial Office Holders Personal Details
    Given the User is on Resources Page
    When  the User deletes the judicial office holder record
    Then  the judicial office holder record is deleted
    And   the judicial office holder can NOT be allocated to <type>
    Examples:
      | type    |
      | Session |
      | Listing |