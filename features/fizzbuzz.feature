Feature: Play Fizz Buzz game

  As an obnoxious drinker
  I want to win fizz buzz
  So that I can drink another day

  Scenario: A simple number is called
    When I'm given "<call>"
    Then I will respond with "<response>"

  Examples:
    | call | response |
    | 1    | 1        |
