Feature: Projects

#=========[ Projects ]=========#

Scenario: User can see several project pages

	Given user is on "lavadrop" project page
	Then user should see "LavaDrop" project page header
	And project page test browser will close
	
	Given user is on "dustinsison-com" project page
	Then user should see "DustinSison.com" project page header
	And project page test browser will close
	
	Given user is on "dustinsison-com-qa-automation" project page
	Then user should see "dustinsison.com QA Automation" project page header
	And project page test browser will close