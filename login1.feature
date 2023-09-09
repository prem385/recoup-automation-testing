# Created by vidya at 31/07/23
Feature: Login with valid credentials
    As a user
    I want to log in to the Recoup website using my Google account
    So that I can access my account and use the recoup's features

    Scenario: User logs in with valid credentials
        Given the user is on the Login page
        When the user enters valid username and password
        And the user clicks on login button
        # And the user grants permission for the recoup website to access their Google account
        Then the user is logged in and should see Metadata Fields title


    Scenario:  User login with invalid credentials
        Given the user is on the Login page
        When the user enters invalid username and password
        And the user clicks on login button
        Then the user should not get logged in and should see error message


    Scenario:  Logout user
        Given the user is logged in
        When he clicks on logout button
        Then he should get logged out of the application
        And he should be in home page


    Scenario: Login with inactive user
        Given the user is inactive
        When he enter username and password
        And he clicks on login button
        Then the user should not be loggedin