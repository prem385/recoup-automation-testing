Feature:  Book an appointment

  Scenario: Book an appointment from Patient's profile
    Given the patient is already registered in the system
    And the front desk officer can select the patient profile
    When the front desk officer selects the patient
    And he selects the type of consult ( initial/ follow up/session)
    And he selects the doctor
    And he selects the location
    Then the book appointment review page should be displayed with all the details


  Scenario: Book an appointment after selectin the appoinment slot
    Given the patient is already registered in the system
    When the front desk officer selects for appointment slot for a provider
    And he chose the patient details
    And he enter the brief not about appointment
    And he chose the mode of consultation
    And he chose the location
    And he he click on continue
    And he should be able to see the book appoinment details
    And he click on book appointment
    Then the appointment should be confirmed
    And the appointment should be listed in doctor's and front desk dashboard
    And the calender availability should be updated


  Scenario: Confirmation pop up once the appointment is confirmed
    When the front desk officer makes an appointment
    Then a confirmation pop up  should be  displayed with  Patient name, (Guardian’s name if minor), type of appointments, Provider name(s), slot details, and optional instructional note
    And the front desk officer should be able to update the profile


  Scenario: Verify that the patient receives a calender invite when the appointment is confirmed
    When the appointment is confirmed
    Then the patient should receive a calender invite in patient's email address
    And the invite should contain the location and type of appointment
    And the optional instructions notes
    And the description contianing a note to call front desk in case any changes are required

  Scenario: Verify that the provider gets a notification when the booking is scheduled
    When a new appointment is scheduled
    Then the provider should get a notification with all the appointment details

  Scenario: All the appointments should be visible to front desk app
    When the appointment is confirmed
    Then the appointments should be displayed in front desk app

  Scenario:  Appointment reminders
    Given the patient has booked an appointment
    Then the patient should get an SMS 24 hours before the appointment time with the appointment details
    And the SMS should contain the info to call the front desk if they need to make any changes to the appointment

    