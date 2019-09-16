Feature: Footer

#=========[ Footer ]=========#

Scenario: User can see the expected footer content

	Given user is on the homepage
	Then user sees expected footer content
	When user clicks "Twitter" footer link
	Then user should see "Twitter" profile
	And browser goes back
	When user clicks "GitHub" footer link
	Then user should see "GitHub" profile
	And browser goes back
	When user clicks "LinkedIn" footer link
	Then user should see "LinkedIn" profile
	And browser goes back
	When user should see "Email" footer link