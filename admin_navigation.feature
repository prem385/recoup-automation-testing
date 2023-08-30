# Created by vidya at 27/07/23

### Gherkin Scenario: Admin Navigation
  Feature: Admin Navigation

  As an admin user of Recoup application
  I want to be able to navigate to different admin pages
  So that I can manage the application effectively

  Scenario: Navigate to account management section
    Given I am logged in as an admin user
    When I click on the "Accounts" link in the navigation menu
    Then I should be able to see the accounts section expanded
    And I should see users, Providers, Care captions, Customers, Doctor, Nurse and Front office options

  Scenario: Navigate to user list page
    Given I am logged in as an admin user
    When I click on the "Accounts" link in the navigation menu
    And I click on the "Users" link
    Then I should be able to see the user list


  Scenario: Navigate to user details page
    Given I am logged in as an admin user
    And I am in user list page
    When  I click on the action gear items of a single user
    And I click on the view option
    Then I should be able to see the user details page
