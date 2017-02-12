Feature: Index Navigate
  In order to know if the index path works correctly
  As a user
  I want to travel by the index and see the page good

  Scenario: Seeing the index good
    When I am in the index page
    Then I should see a great header
    And I should a message in the page center
    And I should see a great footer

  Scenario: Clicking their links
    When I am in the index page
    And I click Sign up link
    Then I should see a form for log in
    When I click the ToGo logo of header
    Then I should be in the index again