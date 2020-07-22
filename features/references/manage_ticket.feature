# FeatureID  EpicID StoryID TestID
Feature: Judicial Office Holder holding the right ticket type (authority) can be assigned to a hearing

  As a Solution
  I want to be able to create a record of all the ticket types of judicial office holders,
  So that the system holds a record of all tickets types judicial office holders have the authority to preside.

  Background:
    Given a hearing for tomorrow is created
    And   the hearing is assigned to a ticket
    And   a Judicial Holder is created


  @pending
  @manage_references
  @manage_ticket_type
  @SLR-330 @SLR-600 @SLR-891 @SLR-798
  Scenario: Judicial Office Holder assigned to a ticket type
    Given I am on judicial office holder Page
    When  I am assigned to a ticket
    Then judicial office holder can be assigned to a hearing for the ticket type

  @pending
  @manage_references
  @manage_retirement
  @SLR-330 @SLR-600 @SLR-891 @SLR-798
  Scenario: Judicial Office Holder not assigned to a ticket type
    Given I am on judicial office holder Page
    When I am mot assigned to any ticket
    Then judicial office holder can't be assigned to the hearing

