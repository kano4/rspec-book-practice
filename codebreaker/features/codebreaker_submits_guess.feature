Feature: code-breaker starts game

  As a code-breaker
  I want to start a game
  So that I can break the code

  Scenario: start game
    Given I am not yet playing
    When I start a new game
    Then I should see "Welcome to CodeBreaker!"
    And I should see "Enter guess:"


Feature: code-breaker submits guess

  The code-breaker submits a guess of four numbers. The game marks the guess with + and - signs.

  For each number in the guess that matches the number and position of a number in the secret code, the mark inculdes one + sign. For each number in the guess that matches the number but not the position of a number in the secret code, the mark includes one - sign.
