
Feature: Roles and Permissions

	Background: common steps
	Given the user is on the Login page
	When the user enters valid username and password
	And the user clicks on login button


	Scenario: Creating a new role
	When he clicks on setup
	And he navigate to the roles and permissions page
	And he clicks on create role button
	And he enter a role name and description
	And he select the permissions for the role
	And he saves the role


