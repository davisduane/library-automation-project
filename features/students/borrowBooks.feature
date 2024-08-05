@lib-06
Feature: Borrowing books

    As a student, I should be able to borrow books on the "Books" Page.

    Scenario: Borrowing a book
        Given I am on the "Books" page
        When I enter "Book name" in the the search
        And I click on Borrow Book button
        Then I should see the book being borrowed by myself
        



    #! Acceptance Criteria are missing :(

    #TODO: Analyze the user story and create acceptance criteria yourself!

    #TODO: Create scenarios that cover all the acceptance criteria
