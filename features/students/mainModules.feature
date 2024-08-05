@lib-05
Feature: Main modules of the application

    As a student, I want to access to the main modules of the app.

    Scenario: Students should see 2 main modules (Books, Borrowing Books)
    Given I am a student
    When I log in
    Then I should see 2 main modules (Books, Borrowing Books)

    #* AC: students should see 2 modules: Books, Borrowing Books


    # TODO: Verify students can see 2 main modules (Books and Borrowing Books)
  

    #? Should there be more scenarios for this user story? feel free to add more scenarios

