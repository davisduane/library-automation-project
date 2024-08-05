@lib-10
Feature: Edit Books Functionality

    As an admin, I should be able to edit books on the "Books" page.

      Scenario: Admin can edit book details
        Given I am logged in as an admin
        And I am on the "Books" page
        When I click on the "Edit" button for a book
        And I update the book details
        And I click on the "Save Changes" button


    #! Acceptance Criteria are missing :(


    #TODO: Analyze the user story and create acceptance criteria yourself!


    #TODO: Create scenarios that cover all the acceptance criteria