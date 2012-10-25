Feature: experamental branch creation
  In order to seperate my code to an experamental branch
  As a developer
  I want to create an experamental branch

  Background:
    Given I have a working repo

  Scenario: Create experamental branch
    When I run `git exp test`
    Then I should be on a branch called "exp/test"

  Scenario: A branch already exists
    Given I have a branch called "exp/test"
    When I run `git exp test`
    Then the output should contain "Branch already exists. Switching to 'exp/test'"
    And I should be on a branch called "exp/test"
