Feature: Register a new patient


Scenario: Register a patient if not already registered
  Given the front officer in dashboard page
  And the patient is not registered yet in the system
  When he clicks on register new patient
  Then the register patient form should get opened


Scenario: We should see error message when we create a profile without firstname, last name, DOB and mobile number
  When the front officer creates a patient profile without first name, last name, DOB and mobile number
  Then the user should see an error message
  And the profile should not get created



Scenario: The system should send an SMS to the cell phone number for verification.
  Given the front officer is in register new patient page
  When he enter cell phone number and click on verify
  Then the system should send an SMS to the cell phone number for verification
  And after verification, a green tick should be displayed next to the patient’s profile indicating that it is verified.


Scenario: The system should send an SMS to the emergency contact number for verification.
  Given the front officer is in register new patient page
  When he enter emergency contact number and click on verify
  Then the system should send an SMS to the cell phone number for verification



Scenario: The system should display !mark against the name whose cell number is unverified
  Given the front officer is in register new patient page
  When he enter cell phone number and doesnt click on verify
  And he saves the patient profile
  Then the system should display !mark against the name whose cell number is unverified


Scenario: The system should send verification code to the email address provided
  Given the front officer is in register new patient page
  When he enter email and click on verify
  Then the system should send verification code to the email address provided
