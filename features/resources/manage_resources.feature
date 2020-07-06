@manage_resources
@SLR-469  #Epic
@SLR-665  #Test ID
@SLR-1015 #Test Story

Feature: Assign, swap and remove resources from sessions and listings
  As A... Resource Allocator
  I want to assign, swap and remove resources
  So that I can apply to simplify resources management

# Questions
#Q1: Is the Resource Allocator expected to this task?
#Q2: Do we have a search Resource page , for selecting "Available","Not Available", judicial office holder ?
#Q3: How are "Available","Not Available" judicial office holder displayed (Rows of Records etc) ?
#Q4: How are "Available" judicial office holder booked for a session/listing ?


# Assumptions
#1. Resource Allocator is the user
#2. Search Resource Page - Displays available resources which can then be allocated to Session/Listing
#3. resources already allocated with Session/Listing cannot be allocated again (disabled)

  Background
  Given I am logged in as Resource Allocator

  @SLR-839
  Scenario Outline: Identify Judicial Office Available and successful <type> allocation
    Given the User is on "Search Resource" Page
    When  the User searches for "Available", judicial office holder
    Then  the User is presented with all "Available", judicial office holder
    And   any available judicial office holder can be allocated to <type>
    Examples:
      | type    |
      | Session |
      | Listing |

  @SLR-840
  Scenario Outline: Identify Judicial Office Holder NOT Available and ensure no double booking
    Given the User is on "Search Resource" Page
    When  the User searches for "Available", judicial office holder
    Then  the User is presented with all "Not Available", judicial office holder
    And   not available judicial office holder cannot be double booked to <type>
    Examples:
      | type    |
      | Session |
      | Listing |

  @SLR-841
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