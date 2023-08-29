Feature: managing provider doctor interface
Background: common steps
    Given the user is on the Login page
    When the user enters valid username and password
    And the user clicks on login button
    When he clicks on provider doctor

Scenario: navigating patient search by applying filters
    When provider doctor selects male or female gender filter
    And provider doctor selects age range between 18-29 years old
    And provider doctor filters brad hummels,kathryn northrop names from assigned care captain
    And provider doctor selects last appointement from 01-01-2021 t0 31-12-2022
    And provider doctor upcoming apointement from 1-06-2023 to 30-06-2023
    And provider doctor selects 90days last interaction
    And provider doctor selects show archieved pateint status
    And provider doctor clicks on apply and filter search
    Then provider doctor must get particular filter patients details

Scenario: provider doctor navigating through allappointements
    When provider doctor search patient in allappointements
    And provider doctor  clicks on start action
    And provider doctor clicks on submit after consultation
    Then consultaion status should finish

Scenario: provider doctor able to find patient by searching in allpatient list
    When provider doctor search for patient name nisha
    Then  provider doctor must able to find patient name called nisha in a list

Scenario: confirmation re-schedule of patient
    When provider doctor clicks on re-schedule
    And provider doctor clicks on confirm
    Then the appointement would be sent to the front desk to be rescheduled for a later date and time

Scenario:provider doctor navigates to payment
    When When provider doctor search for patient name nisha
    Then  provider doctor must able to find patient name called nisha in a list
    And provider doctor must able to see amount paid by nisha
    And Then  provider doctor must able to see payment mode done by nisha
    And provider doctor must able to see Transaction Id and status 
    












