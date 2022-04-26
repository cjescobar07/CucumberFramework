Feature: US-12345 - Search an employee in HRMS //name of the file
  Scenario: Search an employee by id
    Given user is navigated to HRMS aapplication
    When user enters valid admin credential
    And user clicks on login button
    And user navigates to employee list page
    When user enters valid employee id
    And user clicks on search button
    Then user is able to see employee information






