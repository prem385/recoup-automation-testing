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
    
 Scenario: adding existing  metadata fields with object types user
    When admin clicks on add metadata fields
    And admin enters 1 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects exisiting metadata fields
    Then error message "already added to metadata" should display


 Scenario: adding metadata fields with object types user with invalid data
    When admin select object type user
    And admin clicks on add metadata fields
    And admin left blank in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin doesn't select any metadata fields
    And admin clicks on save
    Then metadatafield should not add and error message should display


  Scenario: adding metadata fields with object types healthcare network
    When admin clicks on add metadata fields
    And admin enters 2 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects one of the metadata fields
    And admin clicks on save
    Then succesfully added message should display

  Scenario: adding existing  metadata fields with object types healthcare network
    When admin clicks on add metadata fields
    And admin enters 2 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects exisiting metadata fields
    Then error message "already added to metadata" should display


  Scenario: adding metadata fields with object types healthcare network with invalid data
    When admin clicks on add metadata fields
    And admin left blank S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin left blank  metadata fields
    And admin clicks on save
    Then metadatafield should not add and error message should display  


  Scenario: adding metadata fields with object types customer
    When admin clicks on add metadata fields
    And admin enters 3 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects one of the metadata fields
    And admin clicks on save
    Then succesfully added message should display 

  
  Scenario: adding existing  metadata fields with object type customer
    When admin clicks on add metadata fields
    And admin enters 3 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects exisiting metadata fields
    Then error message "already added to metadata" should display

  Scenario: adding metadata fields with object types customer with invalid data
    When admin clicks on add metadata fields
    And admin left blank S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin left blank  metadata fields
    And admin clicks on save
    Then metadatafield should not add and error message should display  


  Scenario: adding metadata fields with object types provider
    When admin clicks on add metadata fields
    And admin enters 3 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects one of the metadata fields
    And admin clicks on save
    Then succesfully added message should display

  Scenario: adding existing  metadata fields with object type provider
    When admin clicks on add metadata fields
    And admin enters 4 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects exisiting metadata fields
    Then error message "already added to metadata" should display

  Scenario: adding metadata fields with object types provider with invalid data
    When admin clicks on add metadata fields
    And admin left blank S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin left blank  metadata fields
    And admin clicks on save
    Then metadatafield should not add and error message should display  


  Scenario: adding metadata fields with object types health coach
    When admin clicks on add metadata fields
    And admin enters 4 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects one of the metadata fields
    And admin clicks on save
    Then succesfully added message should display 

  Scenario: adding existing  metadata fields with object type health coach
    When admin clicks on add metadata fields
    And admin enters 5 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects exisiting metadata fields
    Then error message "already added to metadata" should display

  Scenario: adding metadata fields with object types health coach with invalid data
    When admin clicks on add metadata fields
    And admin left blank S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin left blank  metadata fields
    And admin clicks on save
    Then metadatafield should not add and error message should display  


  Scenario: adding metadata fields with object types doctor
    When admin clicks on add metadata fields
    And admin enters 5 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects one of the metadata fields
    And admin clicks on save
    Then succesfully added message should display

  
  Scenario: adding existing  metadata fields with object type  doctor
    When admin clicks on add metadata fields
    And admin enters 6 in S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin selects exisiting metadata fields
    Then error message "already added to metadata" should display

  Scenario: adding metadata fields with object types health coach with invalid data
    When admin clicks on add metadata fields
    And admin left blank S.NO metadata field to add for the object
    And admin clicks on select metadatafield
    And admin left blank  metadata fields
    And admin clicks on save
    Then metadatafield should not add and error message should display  

