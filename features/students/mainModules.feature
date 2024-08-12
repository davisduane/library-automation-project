@lib-05
Feature: Main modules of the application

    As a student, I want to access to the main modules of the app.

   Background:
    Given user is already on the login page

    Scenario: Students should see 2 main modules (Books, Borrowing Books)
    Given User is already logged in as "<user-type>"
    Then I should see two main modules Books, Borrowing Books

    Examples:
    | user-type |
    | student   |
   # | admin     |


    #* AC: students should see 2 modules: Books, Borrowing Books


    # TODO: Verify students can see 2 main modules (Books and Borrowing Books)
  

    #? Should there be more scenarios for this user story? feel free to add more scenarios

