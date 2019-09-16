Feature: Navigation Menu

#=========[ Navigation Menu ]=========#

Scenario: User can navigate through the navigation menu

	Given user is on any page
	When user clicks "Home" navigation link
	Then user should see "Welcome" header
	When user clicks "About Me" navigation link
	Then user should see "About Me" header
	When user hovers over "Projects" navigation link
	And user clicks "LavaDrop" subnavigation link
	Then user should see "LavaDrop" header
	When user clicks "Personal Log" navigation link
	Then user should see "Personal Log" header
	When user clicks "Projects Log" navigation link
	Then user should see "Projects Log" header