Feature: Open the Chrome browser in incognito mode and sign in to Test Website # features/challenge.feature:1

  @one
  Scenario: Sign in with an invalid username                                    # features/challenge.feature:3
    Given I open the Chrome browser in incognito mode                           # features/steps/invalidusername.py:11
    And I navigate to "https://practicetestautomation.com/practice-test-login/" # features/steps/invalidusername.py:26
    When I enter an invalid username and a valid password                       # features/steps/invalidusername.py:31
    And I click on the "Submit" button                                          # features/steps/invalidusername.py:45
    Then the error text should be displayed                                     # features/steps/invalidusername.py:50
    And the text "Your username is invalid!" is displayed                       # features/steps/invalidusername.py:57

  @two
  Scenario: Sign in with a correct username and wrong password                  # features/challenge.feature:14
    Given I open the Chrome browser in incognito mode                           # features/steps/invalidusername.py:11
    And I navigate to "https://practicetestautomation.com/practice-test-login/" # features/steps/invalidusername.py:26
    When I enter a correct username and a wrong password                        # features/steps/CorrectUsername_WrongPassword.py:8
    And I click on the "Submit" button                                          # features/steps/invalidusername.py:45
    Then the error text should be displayed                                     # features/steps/invalidusername.py:50
    And the text "Your password is invalid!" is displayed                       # features/steps/CorrectUsername_WrongPassword.py:23

  @three
  Scenario: Sign in with a correct credentials                                  # features/challenge.feature:24
    Given I open the Chrome browser in incognito mode                           # features/steps/invalidusername.py:11
    And I navigate to "https://practicetestautomation.com/practice-test-login/" # features/steps/invalidusername.py:26
    When I enter a correct email address and a correct password                 # features/steps/correct_Credentials.py:9
    And I click on the "Submit" button                                          # features/steps/invalidusername.py:45
    Then logged in successfully                                                 # features/steps/correct_Credentials.py:24

