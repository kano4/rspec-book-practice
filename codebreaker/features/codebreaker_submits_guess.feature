Feature: code-breaker submits guess

  As a code-breaker
  I want to submit a guess
  So that I can try to break the code

  Scenario: all exact matches
    Given the secret code is "1234"
    When I guess "1234"
    Then the mark should be "++++"

  Scenario: 2 exact matches and 2 number matches
    Given the secret code is "1234"
    When I guess "1243"
    Then the mark should be "++--"

  Scenario: 1 exact match and 3 number matches
    Given the secret code is "1234"
    When I guess "1342"
    Then the mark should be "+---"

  Scenario: 4 number matches
    Given the secret code is "1234"
    When I guess "4321"
    Then the mark should be "----"
