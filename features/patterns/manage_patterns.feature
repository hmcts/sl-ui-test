# JIRA Feature ID: SLR-281 
# Test ID: SLR-645
# Feature Short Name, Epic ID, User Story ID Test ID

Feature: Manage patterns for session/schedules
As A... Listing Officer
I want to manually create patterns
So that I can apply to simplify session managament

@pending
@manage_patterns 
@SLR-281 @SLR-452 @SLR-897 @SLR-645
Scenario: Save a Pattern
Given I want to create a pattern for jurisdictions
And I want to set the time period to weekly
And I want to set the level to a specific court
And I want to set the number of judges to 1
When I create the pattern
Then the pattern is created
And the pattern can be viewed in the pattern list view

@pending
@manage_patterns
@SLR-281 @SLR-452 @SLR-898 @SLR-645
Scenario: Assign a Pattern
Given I want to assign an existing pattern
When I assign the pattern to a court
Then the pattern is assigned to a court

@pending
@manage_patterns
@SLR-281 @SLR-452 @SLR-892 @SLR-645
Scenario: Copy a Pattern
Given I want to copy an existing pattern
And I copy the existing pattern to a new pattern called copy pattern
And the new pattern is copied successfully
And it is the same as the existing pattern
And the name of the pattern is copy pattern
When I amend a session in the copy pattern pattern
Then the copy pattern session change is successful

@pending
@manage_patterns
@SLR-281 @SLR-452 @SLR-911 @SLR-645
Scenario: Temporarily suspend a session
Given I want to temporarily suspend an existing session
When I suspend the existing session
Then the existing session is suspended

@pending
@manage_patterns
@SLR-281 @SLR-452 @SLR-911 @SLR-645
Scenario: Temporarily suspend a session
Given I want to reinstate a suspended session
When I reinstated the suspended session
Then the suspended session is reinstated
