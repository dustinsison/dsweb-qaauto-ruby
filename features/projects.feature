Feature: Projects


  Scenario: User can see several project pages
    Given user is on "lavadrop" page
    Then user should see "LavaDrop" project page header
    Given user is on "dustinsison-com" page
    Then user should see "DustinSison.com" project page header
    Given user is on "dustinsison-com-qa-automation" page
    Then user should see "dustinsison.com QA Automation" project page header
