@lib-01
Feature: Login to the application
  As a user, I want to login so that I can access the app's main features.

  #* AC1: users should be able to log in with valid credentials and launch to the homepage.
  #* AC2: users should see a "Sorry, Wrong Email or Password" error pop-up message if any users try to log in with invalid credentials.
  #* AC3: users should see a “This field is required.” error pop-up message when they attempt to log in without any credentials.


  Background:
    Given user is already on the login page

  Scenario Outline: Verify users can login with valid credentials
    When user enters valid username '<user-type>'
    And user enters valid password '<user-type>'
    And user clicks the login button
    Then user login succussfully to the homepage
    Examples:
      | user-type |
      | admin     |
      | student    |


# TODO: Verify users can not login with invalid credentials
@lib-01-02
Scenario Outline: Verify users cannot login with invalid credentials
  When user enters invalid username "<invalid-username>" 
  And user enters invalid password "<invalid-password>"
  And user clicks the login button
  Then user sees a "Sorry, Wrong Email or Password" error pop-up message
  Examples:
    | invalid-username | invalid-password |
    | student@library| libraryUse |
    | library@cydeo | libraryPassword |

# TODO: Verify users are not allowed to login without any credentials


    #? Should there be more scenarios for this user story? Feel free to add more scenarios.


