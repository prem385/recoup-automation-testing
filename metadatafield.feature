Feature: Manage Metadata Fields

   Background: common steps
     Given the user is on the Login page
     When the user enters username "recoup_admin@recoup.health" and password "Admin@123"
     And the user clicks on login button
     When he clicks on setup


  Scenario: Add a new metadata field with valid data
    When admin navigates to metadata fields
    When admin click on the "Create" button
    And admin enter "email" as the api name
    And admin enter "Email" as the display name
    And admin enters tip in tooltip
    And admin select the required checkbox
    And admin select the api response checkbox
    And admin select "Email" from the type dropdown
    And admin select "Text" from the display type dropdown
    And admin enters value in default value
    And admin select the index checkbox
    And admin select the search checkbox
    And admin selects one of the validation rule
    And admin clicks on create
    Then metadatafield should succesfully created

  Scenario: Add a new metadata field with invalid data
    When admin navigates to metadata fields
    When admin click on the "Create" button
    And admin enter "email" as the api name
    And admin enter "Email" as the display name
    And admin enters tip in tooltip
    And admin select the required checkbox
    And admin select the api response checkbox
    And admin select "Email" from the type dropdown
    And admin select "Text" from the display type dropdown
    And admin enters value in default value
    And admin select the index checkbox
    And admin select the search checkbox
    Then error message should display