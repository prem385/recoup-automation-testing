Feature: Healthcare Network

  Scenario: Add a new Clinic HealthcareNetwork with valid Params
    Given the user is in Healthcare network page
    When a user adds a new clinic healthcare network with valid Params
    Then the success message should be displayed

  Scenario: Add a new Hospital HealthcareNetwork with valid Params
    When a user adds a new hospital healthcare network with valid Params
    Then the success message should be displayed


  Scenario: Add a new Corporate HealthcareNetwork with valid Params
    When a user adds a new corporate healthcare network with valid Params
    Then the success message should be displayed


    Scenario: Add a new HealthcareNetwork with Invalid params
    When a user adds a new healthcare network with invalid params
    Then the record should not get created
    And  user should see validation error message

  Scenario: View a single Healthcare Network record
    When the user navigate to healthcare network record
    And he clicks on action gear items view option of a health care network record
    Then the user should be able to view the healthcare network details




  Scenario: Update an existing healthcare network with proper params
    When a user navigates to healthcare network record
    And he clicks on action gear items Edit option of a health care network record
    Then he should be able to update the record
    And the user should be able to see success message

  Scenario: Update an existing healthcare network with invalid params
     When a user navigates to healthcare network record
     And he clicks on action gear items Edit option of a health care network record
     And he updates with invalid data
    Then the healthcare network should not get updated
    And the error message should get displayed


  Scenario: Disabling an existing healthcare network in the system
    When a user navigates to healthcare network record
     And he clicks on action gear items Disable option of a health care network record
    Then the record should get disabled
    And user should see the message