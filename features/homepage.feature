Feature: Homepage

#=========[ Homepage ]=========#

Scenario: User can see the default homepage on dustinsison.com

	Given user is on homepage
	Then user should see homepage header
	And homepage test browser will close
	
Scenario: User sees the expected header content on the home page

	Given user is on homepage
	Then user should see homepage header
	And user should see expected homepage header content
	And homepage test browser will close