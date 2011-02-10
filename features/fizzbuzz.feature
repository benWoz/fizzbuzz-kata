Feature: Play Fizz Buzz game

  As an obnoxious drinker
  I want to win fizz buzz
  So that I can drink another day

  Scenario Outline: A simple number is called
    When I'm given "<call>" I'll respond with "<response>"
  Examples:
    | call | response |
    | 1    | 1        |
    | 2    | 2        |

  Scenario Outline: A number divisible by 3 is called
    When I'm given "<call>" I'll respond with fizz
  Examples:
    | call |
    | 3    |
    | 6    |

  Scenario Outline: A number divisible by 5 is called
    When I'm given "<call>" I'll respond with buzz
  Examples:
    | call |
    | 5    |
    | 10   |

  Scenario Outline: A number divisible by both 3 & 5 is called
    When I'm given "<call>" I'll respond with fizzbuzz
  Examples:
    | call |
    | 15   |
