@lib-02
Feature: Logout from the application

    As a user, I should be able to logout from the app.

    Scenario: User logs out successfully
        Given I am logged in as "user1" 
        When I click the "Log out" button
        Then I should be redirected to the login page

    #* AC1: user should log out from the homepage by clicking the “Log out”  button under the account name.


    # TODO: verify users can logout from the app

    
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.