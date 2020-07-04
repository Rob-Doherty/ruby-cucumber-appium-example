@ios_only
Feature: Calculator

  Scenario Outline: Add two numbers
    Given I open the calculator app
    When I submit "<num1>" and "<num2>"
    Then the sum should be "<answer>"

    Examples:
      | num1   | num2   | answer |
      | 1      | 1      | 2      |
      | 10     | -10    | 0      |
      | -10000 | -10000 | -20000 |

  Scenario: Add two characters
    Given I open the calculator app
    When I submit "a" and "b"
    Then the sum should not be calculated
