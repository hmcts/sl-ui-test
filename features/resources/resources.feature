@SLR-469 @SLR-665
#Epic & Test ID
Feature: Assign, swap and remove resources from sessions and listings
  As A... System User
  I want to assign, swap and remove resources
  So that I can apply to simplify resources management

  Background:
  Given: I am logged into the system and have necessary permissions

  @SLR-469 @SLR-839
  #Epic & Story ID
  Scenario Outline: Identify Judicial Office Holder Availability Status and allocation
    Given I am on the Search Resource Page
    And   search for "available", judicial office holder
    Then  I am presented with all "available", judicial office holder
    And   I can successfully allocate them to <type>
    Examples:
      | type    |
      | Session |
      | Listing |

