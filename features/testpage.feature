Feature: Test Page


  Scenario: As a user I can utilize all elements present on the Automation QA Test Page
    Given user is on "automated-qa-test-page" page
    Then user can see test_page elements
    When user clicks on "input_field" page_element
    And user inputs "test" on "input_field" page_element
    Then user can see "test" on "input_field" page_element
    When user clicks on "single_sel_field" page_element
    And user clicks on "five" in "single_sel_field" page_element
    Then user can see "five" selected on "single_sel_field" page_element
    When user clicks on "multi_sel_field" page_element
    And user clicks on "four" in "multi_sel_field" page_element
    And user clicks on "five" in "multi_sel_field" page_element
    Then user can see "four" and "five" selected on "multi_sel_field" page_element
    When user clicks on "button" page_element
    When user clicks on "dropdown" page_element
    And user inputs "test" on "dropdown" page_element
    And user clicks "dropdown_three" on "dropdown" page_element
    Then user can see "dropdown_three" selected on "dropdown" page_element
    When user clicks on "output_field" page_element
    And user inputs "50" on "output_field" page_element
    And user drags slider "right" on "output_field" page_element
    Then user can see "150" on "output_field" page_element