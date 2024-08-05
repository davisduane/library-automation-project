@lib-09
Feature: Main Modules of the Application

  As an admin, I want to access the main modules of the app.
 
  Scenario: Admin user can view all main modules
    Given I am logged in as an admin
    And I am on the main dashboard page
    When I look at the navigation menu
    Then I should see the following main modules:
      | Module    |
      | Dashboard |
      | Users     |


    #* AC: Admin users should see 3 modules: Dashboard, Users, Books

  
    # TODO: Verify admins can see 3 main modules (Dashboard, Users, and Books)
    

    #? Should there be more scenarios for this user story? Feel free to add more scenarios.