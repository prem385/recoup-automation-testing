Feature: Add form builder

  Background: common steps
    Given the user is on the Login page
    When the user enters valid username and password
    And the user clicks on login button
    When he clicks on setup

  Scenario: add a form builder
    When admin navigates to form builder
    And admin clicks on add button
    And admin enters intakeform in formname
    And admin enters 'intake form for specific to CEO's in notes
    And admin enters intake form in form display name
    And admin enters type in description
    And admin enters help in Form help text
    And enters 'intake form' in tags
    And admin selects form name and description in show all pages
    And admin selects display progress bar
    And admin click on save
    Then form should successfully created

  Scenario: edit a form builder
    When admin clicks on edit button
    And admin add new section
    And admin enters sleep in section display name
    And admin enters desc in description
    And admin enters help in secction help text
    And admin add questions with id and type
    And admin enable all section settings
    And admin clicks on save button

  Scenario: Publish a form builder
     When admin clicks on add page break
     And admin clicks on section settings
     And admin selects show section intro
     And admin selects show one question in a page
     And admin selects display section progress bar

  Scenario: Navigating to the intake form
     When admin navigated to intake form
     And admin able to see all the questions added
     And admin clicks on continue

  Scenario: preview intake form
     When admin clicks on preview
     And admin add section sleep
     And admin add section timeline
     And admin add section ok kanmani
     And admin click on save

  Scenario: Publish intake form
    When admin clicks on publish
    And admin clicks pon keep current version
    And admin update form with the latest question
    And admin update questions in sleep section
    And admin clicks on done

