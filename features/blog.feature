Feature: Blog


  Scenario: User can see blog listing pages
    Given user is on "/projects-log" blog page
    Then user should see "Projects Log" blog listing page
    And user clicks on "Personal Log" blog link
    Then user should see "Personal Log" blog listing page
    And user clicks on "Projects Log" blog link
    Then user should see "Projects Log" blog listing page

  Scenario: User can see blog entry pages
    Given user is on "/projects-log" blog page
    Then user should see "Projects Log" blog listing page
    When user clicks first blog title
    Then user should see blog entry page
