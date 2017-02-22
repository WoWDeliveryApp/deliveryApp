@javascript
Feature: Signup Account
  In order to check that a user can sign up and sign in successfully
  As a user
  I want to sign up and sign in

  @javascript
  Scenario: User signing in
    Given I am on the sign up page
    And I fill fields Name, email, password, Password confirmation
    And I click Sign up
    Then I should see a message that field address can't be blank
    Then I fill field address
    And I click Sign up
    Then I should see a message that say "Bienvenido! Te has registrado correctamente."
