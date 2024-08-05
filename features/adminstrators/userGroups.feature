@lib-07
Feature: User Groups Filtering

    As an admin, I should be able to filter the user groups on the "Users" page.
   Background: 
     Given I am logged in as an admin
     And I am on the main dashboard page
     And I have access to the "Users" page

     
     Scenario: Admin can filter user groups by name
     Given I am on the "Users" page
     When I click on the "Groups" tab
     And I select "Group" name from the dropdown
     Then I should see all "Group" the data

    #! Acceptance Criteria are missing :(


    #TODO: Analyze the user story and create acceptance criteria yourself!


    #TODO: Create scenarios that cover all the acceptance criteria
