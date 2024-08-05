@lib-04
Feature: Return Books Functionality

    As a student, I should be able to return the borrowed books on the "Borrowing Books" page.

    Scenario: Return a borrowed book
        Given I am on the "Borrowing Books" page
        And I have borrowed a book
        When I click on the "Return Book" button for that book

    #! Acceptance Criteria are missing :(

    #TODO: Analyze the user story and create acceptance criteria yourself!

    #TODO: Create scenarios that cover all the acceptance criteria