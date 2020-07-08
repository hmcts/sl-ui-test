Feature: Assign, swap and remove Resources from sessions and listings
  As A... Resource Allocator
  I want to assign, swap and remove resources
  So that I can apply to simplify resources management

# Questions
#Q1: Is the Resource Allocator expected to this task?
#Q2: Do we have a search Resource page , for selecting "Available","Not Available", judicial office holder ?
#Q3: How are "Available","Not Available" judicial office holder displayed (Rows of Records etc) ?
#Q4: How are "Available" judicial office holder booked for a session/listing ?
#Q5: What is Non Hearing Activity ? How will the System know about the activity ? Who Is it applicable to everyone ?


# Assumptions
#1. Resource Allocator is the user
#2. Search Resource Page - Displays available resources which can then be allocated to Session/Listing
#3. resources already allocated with Session/Listing cannot be allocated again (disabled)

  Background:
    Given I am logged in as Resource Allocator

  @pending
  @manage_resources
  @SLR-347 @SLR-469 @SLR-839 @SLR-887 @SLR-665
  Scenario Outline: Identify Judicial Office Available and successful <type> allocation
    Given the User is on "Search Resource" Page
    When  the User searches for "Available", judicial office holder
    Then  the User is presented with all "Available", judicial office holder
    And   any available judicial office holder can be allocated to <type>
    Examples:
      | type    |
      | Session |
      | Listing |

  @pending
  @manage_resources
  @SLR-347 @SLR-469 @SLR-840 @SLR-886 @SLR-665
  Scenario Outline: Identify Judicial Office Holder NOT Available and ensure no double booking
    Given the User is on "Search Resource" Page
    When  the User searches for "Available", judicial office holder
    Then  the User is presented with all "Not Available", judicial office holder
    And   not available judicial office holder cannot be double booked to <type>
    Examples:
      | type    |
      | Session |
      | Listing |

  @pending
  @manage_resources
  @SLR-347 @SLR-469 @SLR-841 @SLR-665
  Scenario Outline: Judicial Office <type> cancellation results in updating the status to Available
    Given the User is on "Search Resource" Page
    When  the User searches for "Available", judicial office holder
    And   allocates to a <type>
    And   cancels the <type>
    Then  the judicial office holder status becomes "Available" again for <type> allocation
    Examples:
      | type    |
      | Session |
      | Listing |

  @pending
  @manage_resources
  @SLR-347 @SLR-469 @SLR-885 @SLR-665
  Scenario Outline: Update Judicial Office Holder Availability Status to NOT available for Non-Hearing Activities
    Given <NonHearingType> Non-Hearing Activities is taking place
    When  the user selects Judicial Office Holder for the activity
    Then  the judicial office holder status becomes "Not Available" again for <type> allocation
    Examples:
      |NonHearingType| type    |
      |Hard          | Session |
      |Soft          | Listing |
