# FeatureID  EpicID StoryID TestID
Feature: Judicial Office Holder as both Salaried and Fee Paid

  As a Solution
  I want to be able to identify if a judicial office holder is both salaried and fee paid,
  So that It can be identified when the judicial office holder is allocated to a hearing as 'Salaried' or 'Fee Paid'.

  Background:
    Given Hearing are setup

  @pending
  @manage_references
  @manage_payment_type
  @SLR-330 @SLR-600 @SLR-899 @SLR-798
  Scenario: Identify Judicial Office Holder as both Salaried and Fee Paid
    Given I have a existing multi-day hearing
    And  I am on judicial office holder Page
    And  I add the payment type as Salaried
    And  judicial office holder can be assigned to a hearing
    And  judicial office holder can be identified as Salaried
    And  I update the payment type as Fee Paid
    When judicial office holder can be assigned to a hearing
    Then judicial office holder can be identified as Fee Paid



