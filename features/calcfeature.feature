Feature: Calculator
    Scenario: Add 2 numbers
    Given I enter 2 and 3
    When I add the numbers
    Then the added result should be 5

    Scenario: Minus 2 numbers
    Given I enter 4 and 3
    When I subtract the numbers
    Then the subtracted result should be 1

    Scenario: Multiply 2 numbers
    Given I enter 4 and 4
    When I multiply the numbers
    Then the multiplied result should be 16

    Scenario: Divide 2 numbers
    Given I enter 4 and 2
    When I divide the numbers
    Then the divided result should be 2