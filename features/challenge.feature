Feature: Open the Chrome browser in incognito mode and sign in to Test Website
  @ai_part
  Scenario: Sign in with random username and password
    Given I open the Chrome browser in incognito mode
    And I navigate to "https://practicetestautomation.com/practice-test-login/"
    When I enter a random username and a random password
    And I click on the "Submit" button
    Then Store the shown message in the csv file


  @invalidUsername
  Scenario: Sign in with an invalid username
    Given I open the Chrome browser in incognito mode
    And  I navigate to "https://practicetestautomation.com/practice-test-login/"
    When I enter an invalid username and a valid password
    And I click on the "Submit" button
    Then the error text should be displayed
    And the text "Your username is invalid!" is displayed



  @invalidPassword
  Scenario: Sign in with a correct username and wrong password
    Given I open the Chrome browser in incognito mode
    And I navigate to "https://practicetestautomation.com/practice-test-login/"
    When I enter a correct username and a wrong password
    And I click on the "Submit" button
    Then the error text should be displayed
    And the text "Your password is invalid!" is displayed


  @validCredentials
  Scenario: Sign in with a correct credentials
    Given I open the Chrome browser in incognito mode
    And I navigate to "https://practicetestautomation.com/practice-test-login/"
    When I enter a correct email address and a correct password
    And I click on the "Submit" button
    Then logged in successfully




