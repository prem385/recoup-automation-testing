Feature: User

	Background: common steps
	Given the user is on the Login page
	When the user enters valid username and password
	And the user clicks on login button

#
	Scenario: Creating a new user
	When he clicks on Accounts
	And he clicks on Users
	And he clicks on create user
	And he enter a first name, last name and email address
	And he clicks on save user
	Then the new user should get created



	#Scenario: Update an existing user with proper params
		When he clicks on Edit option in action gear items of existing user
		And he updates the firstname
		And he saves the update
		Then the firstname should get updated


	#Scenario: Disable an existing user
		When he clicks on Disable option in action gear items of existing user
		And the pop up should be displayed to confirm whether we need to disable the user
		And the user clicks on disable
		Then the user should get disabled