Feature: Homepage

#=========[ Homepage ]=========#

Scenario: User can see the default homepage on dustinsison.com

	Given user is on the homepage
	Then user should see homepage header
	
Scenario: User sees the expected video content on desktop browsers

	Given user is on the homepage
	Then user should see homepage header
	And user should see expected homepage video content