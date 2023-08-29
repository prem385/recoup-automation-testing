Feature: Add meatadata fields

  Background: common steps
     Given the user is on the Login page
     When the user enters username "recoup_admin@recoup.health" and password "Admin@123"
     And the user clicks on login button
     When he clicks on setup

  Scenario: adding metadata fields with object types user
    When admin selects object type User
    And admin clicks on add metadata fields
    And admin enters 1 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects one of the metadata fields
    And admin clicks on save
    Then succesfully added message should display

  Scenario: adding metadata fields with object types healthcare network
    When admin clicks on add metadata fields
    And admin enters 2 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects one of the metadata fields
    And admin clicks on save
    Then succesfully added message should display


  Scenario: adding metadata fields with object types customer
    When admin clicks on add metadata fields
    And admin enters 3 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects one of the metadata fields
    And admin clicks on save
    Then succesfully added message should display


  Scenario: adding metadata fields with object types provider
    When admin clicks on add metadata fields
    And admin enters 3 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects one of the metadata fields
    And admin clicks on save
    Then succesfully added message should display


  Scenario: adding metadata fields with object types care captain
    When admin clicks on add metadata fields
    And admin enters 4 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects one of the metadata fields
    And admin clicks on save
    Then succesfully added message should display


  Scenario: adding metadata fields with object types doctor
    When admin clicks on add metadata fields
    And admin enters 5 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects one of the metadata fields
    And admin clicks on save
    Then succesfully added message should display

