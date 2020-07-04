@android_only
Feature: Content Demo

  Scenario: App opens on home screen
    When I open the demo app
    Then I should see the home page

  Scenario: Get to the Content Demo
    Given I open the demo app
    When I select the "Content" option
    Then I should see the content page
