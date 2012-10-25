Feature: feature branch creation
  In order to seperate my code to a feature branch
  As a developer
  I want to create a feature branch

  Background:
    Given I have a working repo

  Scenario: Create feat branch
    When I run `git feature test`
    Then I should be on a branch called "feat/test"

  Scenario: A branch already exists
    Given I have a branch called "feat/test"
    When I run `git feature test`
    Then the output should contain "Branch already exists. Switching to 'feat/test'"
    And I should be on a branch called "feat/test"

  Scenario: Untracked changes
    Given I have untracked changes
    When I run `git feature test`
    Then I should be on a branch called "feat/test"

  Scenario: Uncommited changes
    Given I have uncommited changes
    When I run `git feature test`
    Then I should be on a branch called "feat/test"

  Scenario: run with no branch
    When I run `git feature`
    Then the output should contain "No branch name given"
