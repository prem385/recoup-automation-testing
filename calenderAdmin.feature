Scenario: Update default duration time
  Given the user is in Calender page
  When he navigate to default duration section
  And he selects a different time from the drop down
  And he clicks on the save option
  Then the default duration time should get updated as per the selection


Scenario: Update time for Follow up consultation type
  Given the user is in Calender page
  When he navigate to consultation type section
  And he clicks on the consultation time dropdown for Follow up
  And he chose a different time
  And he clicks on save option
  Then the time set up for follow up consultation type should get updated as per the selection


Scenario: Remove consultation type timing
  Given the user is in Calender page
  When he navigate to consultation type section
  And he click on the remove button against a consultation type
  Then the consultation type should get removed from the consultation type section


Scenario: Add a consultation type that was removed before
  Given the user is in Calender page
  When he navigate to consultation type section
  And he clicks on manage link
  And he selects an unchecked type
  And he clicks on submit
  Then the consultation type should get added back to the section

Scenario: Set up confirmation reminders and channels
  Given the user is in Calender page
  When he navigate to Confirmation Reminders & Channels section
  And he clicks on up/down arrows for number selection
  And he selects Day/ Hours / Minutes
  And he selects a channel - By email or SMS or whatsapp or desktop
  And he clicks on save
  Then the confirmation reminder and channel should get saved


Scenario: Remove confirmation remainders
  Given the user is in Calender page
  When he navigate to Confirmation Reminders & Channels section
  And he clicks on remove link against a record
  And he clicks on save
  Then the record should get deleted


 Scenario: Set up new holiday record
  Given the user is in Calender page
  When he navigates to Holiday list section
  And he clicks on Add another link
  Then a new line should get added to the section
  And the user should be able to enter holiday name and select the date
  And he clicks on save
  And the record should get added to the section

Scenario: Update a holiday record
  Given the user is in Calender page
  When he navigates to Holiday list section
  And he updates a holiday name
  And he updates the holiday date
  And he clicks on save
  Then the holiday record name and date should get updated


Scenario: Removing an item from holiday list
  Given the user is in Calender page
  When he navigates to Holiday list section
  And he clicks on remove
  And he clicks on save
  Then the record should get deleted from the section

