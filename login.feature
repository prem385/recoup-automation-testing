Feature: Login with valid credentials
   Scenario: User logs in with valid credentials
       Given the user is on the Login page
       When the user enters username "recoup_admin@recoup.health" and password "Admin@123"
       And the user clicks on login button
       Then user must successfully logged in and should see recoup health logo
