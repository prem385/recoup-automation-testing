Feature:Provider creates appointment availability block(s)

  Scenario: As a Provider I can navigate to my calendar settings and select “Setup Availability Schedule”
    Given the provider is in dashboard page
    When he clicks on calender
    Then he should be able to set up his availability



  Scenario: View the availability slot
    Given the provider is in dashboard page
    When he clicks on Calender
    And he clicks on availability
    Then he should be presented with a list containing the days of the week


  Scenario: Add new availability slot
    Given the provider is in dashboard page
    When he clicks on Calender
    And he clicks on Add new availability
    Then he should be able to add day of the week
    And the availability time (from and to)
    And he should be able to choose the location from the dropdown
    And he should be able to choose remote only or not checkbox
    And he should be able to save the changes


  Scenario: As a Provider I should be able to go into my Calendar View and Click on “Block Calendar”
    Given the provider is in dashboard page
    When he clicks on Calender
    And he clicks on block unavailability
    And he selects the  from and  to date
    And he selects the time
    And he enters a reason
    And he clicks on Confirm and block
    Then the specified time should be updated in Calender



 Scenario: As a provider, I should be able to view the blocked time(unavailability) in Calender
   Given the provider is in dashboard page
    When he clicks on Calender
   Then he should be able to view the blocked time


 Scenario: As a provider, I should be able to edit and update the blocked time
   Given the provider is in dashboard page
    When he clicks on Calender
   And he clicks on blocked time
   Then he should be able to edit and update the blocked time and reason


  Scenario: As a provider, I should be able to edit and update the blocked time
   Given the provider is in dashboard page
    When he clicks on Calender
   And he clicks on blocked time
   Then he should be able to delete the blocked time


 Scenario: If there are any conflicts between a “blocked calendar” event and any pre-scheduled appointments then a task is created for Front Desk to reschedule the appointment. And the Appointment is removed from the Provider’s Calendar.
   Given one user has scheduled an appointment
   When the provider blocks unavailability for the same time slot
   Then the appointment should get cancelled
   And the front desk dashboard should display 'Reschedule CTA' for the same appointment


 Scenario:  Search calendar of a provider in the web portal
   Given the front desk officer is logged in
   When he clicks on provider availability section
   And he selects the type of appointment booking needed (initial / follow up / session)
   And he choose the Non physician specialist
   And he select the provider
   And he choose the location
   Then he should be able to see the next available slot for next one week for the given provider



  Scenario:  Show available calendar slots for Given Date for a given provider
    Given the front desk officer is in dashboard page
    When he clicks on appointment slot
    Then he should be able to see the availability of given provider for the day, week and month


    