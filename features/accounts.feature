Feature: Accounts


  Scenario: Subscriber-level user can sign in with valid credentials
    Given user is on login_page
    When user clicks to sign-in with credentials
    When user inputs "QA Username" in username field
    And user inputs "QA Password" in password field
    And user clicks sign-in button
    Then user should see "Profile" page header
    Then user logs out

  Scenario: User sees error message on log-in page when logging in with invalid credentials
    Given user is on login_page
    When user clicks to sign-in with credentials
    When user inputs "Invalid QA Username" in username field
    And user inputs "Invalid QA Password" in password field
    And user clicks sign-in button
    Then user should see login "ERROR" error message
