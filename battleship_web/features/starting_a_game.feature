Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow link "New Game"
    Then I should see "What's your name?"

  Scenario: Entering the name to start the game
    Given I am on the new game page
    When I enter my name
    Then I should see "the started game"

  Scenario: Not Entering name
    Given I am on the home page
    When I do not enter my name
    Then I should stay on the same page

