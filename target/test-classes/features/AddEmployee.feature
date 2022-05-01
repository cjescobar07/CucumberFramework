Feature: Adding the employees in HRMS Application

  Background:
    When user enters valid admin credentials
    And user clicks on login button
    Then admin user is successfully logged in
    When user clicks on PIM option
    And user clicks on add employee option

  @chris
  Scenario: Adding one employee from feature file
   # Given user is navigated to HRMS application
    And user enters firstname middlename and lastname
    And user clicks on save button
    Then employee added successfully

    @test
    Scenario: Adding one employee using cucumber feature file
      And user enters "Prince" "Vegeta" and "IV"
      And user clicks on save button
      Then employee added successfully

      @test512022
      Scenario Outline: Adding multiple employees
        And user provides "<firstName>" "<middleName>" and "<lastName>"
        And user clicks on save button
        Then employee added successfully
        Examples:
        |firstName|middleName|lastName|
        |Peter    |Spider-Man|Parker  |
        |Beerus   |God of    |Destruction|
        |Kratos   |Ghost of  |Sparta     |

       @test @datatable
       Scenario: Add employee using data table
         When user provides multiple employee data and verifies they are needed
         |firstName|middleName|lastName|
         |Tony     |IronMan   |Stark   |
         |Bruce    |Batman    |Wayne   |
         |Steve    |CaptainAmerica|Rodgers|
         |Clark    |Superman  |Kent    |



