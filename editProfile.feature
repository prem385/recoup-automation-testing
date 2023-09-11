Feature:  Edit and update user profile

  Scenario: Navigating to edit profile page
    Given the user is logged in to Recoup application
    When he clicks on dropdown link next to the user profile
    And he clicks on edit profile
    Then he should be taken to 'your account' section


  Scenario: First letter of firstname and last name should be displayed as profile picture by default
    Given the user is in profile page
    When we see the profile picture section
    Then we should see that First letter of firstname and last name should be displayed as profile picture


  Scenario Outline: Updating the profile picture
    Given  the user is in profile update page
    When <he clicks on 'change display picture'>
    Then the profile picture should get updated
    Examples:
    | he clicks on 'change display picture'|
    | Drag a new photo here                |
    | Upload from your device              |


  Scenario: Error message should be dispayed if profile picture size is more than the permissible limit
    Given the user is in profile update page
    When he clicks on change profile picture
    And he try to upload a picture of more than 8MB or more than 180px to 400px resolution
    Then he should see an error message


  Scenario: Adjust display picture
      Given the user is in profile update page
      When he clicks on change profile picture
      And he uploads a picture
      Then he should be able to zoom in / zoom out / select the picture
      And he should be able to confirm and Set the picture



Scenario: Re upload new image
  Given the user is in profile update page
  When he clicks on change profile picture
  And  upload a picture
  Then he should see Re-upload new image button
  And he should be able to updload new image
  And he should be able to save it


Scenario: Delete display picture
  Given the user is in profile update page
  And there is one profile picture already uploaded
  When he clicks on change display picture
  And he clicks on Remove display picture
  Then he should see a confirmation message saying "your current picture will be removed and this image will be used"
  And he clicks on remove
  And the picture should get removed
  And the initial letters of first name and last name should get displayed there




  