Feature: Platform Registration
  Scenario: Watir Survey Registration
    Given I visit the WATiR site
    When I run the program and submit information
    Then I get a thanks at the end