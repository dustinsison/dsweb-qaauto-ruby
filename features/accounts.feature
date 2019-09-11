Feature: Accounts

#=========[ Accounts ]=========#

Scenario: Subscriber-level user can sign in with valid credentials

	Given user is on login page
	When user clicks to sign-in with credentials
	When user inputs "qa_user" in username field
	And user inputs "l85FE0CZ$R#biQpR)SI&N6$5" in password field
	And user clicks sign-in button
	Then user should see "Profile" page header
	Then user logs out

Scenario: User sees error message on log-in page when logging in with invalid credentials

	Given user is on login page
	When user clicks to sign-in with credentials
	When user inputs "invalid_qa_user" in username field
	And user inputs "l85FE0CZ$R#biQpR)SI&N6$4" in password field
	And user clicks sign-in button
	Then user should see login "ERROR" error message