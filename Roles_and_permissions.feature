 Roles_and_permissions.feature
Feature: Roles and Permissions

Scenario: Creating a new role

	Given an administrator is logged in
	When they navigate to the roles and permissions page
	And they select the actor "Provider" from the actor type drop down
	And they click the create role button
	And they enter a role name and description
	And they select the permissions for the role
	And they click the create button
	Then the new role should be created
	And a success message should be displayed 
	And the role should be created available for assignment to users
	And the associated permissions should be enforced for users with that role


Scenario: Admin cannot create a role with a duplicate name

	Given an admin user is logged in
	And there exists a role named "Editor" under actor type "Provider"
	When they navigate to the roles and permissions page
	And they select the actor "Provider" from the actor type drop down
	And they click the create role button
	And they enter "Editor" as the role name
	And they enter a description for the new role
	And they select permissions for the role
	And they click the create button
	Then the system should display an error message indicating that the role name already exists "A role already exists with the given name, please cancel or change the name to proceed"
	And the system must check for case sensitive and also remove any leading and ending blank spaces as well
	And the new role should not be created


Scenario: Admin cannot create a role without any permissions

	Given an admin user is logged in
	When they navigate to the roles and permissions page
	And they select the actor "Provider" from the actor type drop down
	And they click the create role button
	And they enter a unique role name
	And they enter a description for the new role
	And they do not select any permissions for the role
	And they click the create button
	Then the system should display an error message indicating that the role must have at least one permission set "At least one permission set must be selected for role."
	And the new role should not be created


Scenario: Admin can edit existing roles

	Given an admin user is logged in
	When they navigate to the roles and permissions page
	And they select the actor "Provider" from the actor type drop down
	And they select an existing role to edit
	And they update the role name and description
	And they update the permissions for the role
	And they click the save button
	Then the role should be updated
	And a success message should be displayed

Scenario: Admin cannot edit a role to have a duplicate name

  Given an admin user is logged in
  And there exist two roles named "Editor" and "Manager" under the "Provider" actor type
  When they navigate to the roles and permissions page
  And they select the actor "Provider" from the actor type drop down
  And they select the "Editor" role to edit
  And they change the role name to "Manager"
  And they click the save button
  Then the system should display an error message indicating that the role name already exists
  And the system must check for case sensitive and also remove any leading and ending blank spaces as well
  And the "Editor" role should not be renamed to "Manager"  

Scenario: Admin cannot edit a role to remove all permissions

  Given an admin user is logged in
  And there exists a role named "Editor" with permissions under the "Provider" actor type
  When they navigate to the roles and permissions page
  And they select the actor "Provider" from the actor type drop down
  And they select the "Editor" role to edit
  And they deselect all permissions for the role
  And they click the save button
  Then the system should display an error message indicating that the role must have at least one permission set "At least one permission set must be selected for role."
  And the "Editor" role should still have at least one permission set selected

Scenario: Admin can delete roles

    Given an admin user is logged in
    When they navigate to the roles and permissions page
    And they select the actor "Provider" from the actor type drop down
    And they select a role to delete
    And they click the delete button
    Then the role should be deleted
    And a success message should be displayed
    And any users assigned to the deleted role should have their role changed to a default role for the actor type

Scenario: Admin cannot delete the default role

    Given an admin user is logged in
    When they navigate to the roles and permissions page
    And they select the actor "Provider" from the actor type drop down
    And they select the default "Provider" role to delete
    And they click the delete button
    Then the system should display an error message "The default roles cannot be deleted."


Scenario: Admin can assign roles to users
    Given an admin user is logged in
    When they navigate to the roles and permissions page
    And they select a user to assign a role to
    And they select a role to assign
    And they click the assign button
    Then the user should be assigned the selected role
    And a success message should be displayed

Feature: Role-Based Filter

  As a user with access to Recoup application
  I want to filter data based on my role
  So that I can view only the relevant data

  Scenario: User filters data by role
    Given I am logged into Recoup application
    When I navigate to the data filter section
    Then I should see the option to filter by role

  Scenario: User filters data by specific role
    Given I am logged into Recoup application
    And I have selected the option to filter by role
    When I select a specific role from the filter options
    Then the data displayed should only include data relevant to that role

    Feature: Search for roles and permissions

Scenario: Search for roles
  Given I am logged in as an admin
  When I navigate to the roles page
  And I enter "Care caption" in the search field
  And I click the search button
  Then I should see a list of roles that match the search term

Scenario: Search for metadata
  Given I am logged in as an admin
  When I navigate to the metadata page
  And I enter "first name" in the search field
  And I click the search button
  Then I should see a list that match the search term


Scenario: Admin should see error message when he create a role without mandatory fields
  Given I am logged in as an admin
  When I create a new role without entering role name,description and permission
  Then I should see an error message

Scenario: All existing users should move to default user role if the user role got deleted
  Given I have a non default role created and assigned to the user
  When I delete the non default role
  Then the user should be moved to default user role


