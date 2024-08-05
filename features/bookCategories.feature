@lib-03
Feature: Book Categories

    As a user, I want to see 23 book categories, so I can filter my favorite books.

    Scenario: should see 23 book category
    Given I am on the Book Library homepage
    When I click the Book Categories drop down
    Then I should see 23 book categories

    #* AC1: users should see 23 book categories When users click the Book Categories drop down 
    #*      ALL, Action and Adventure, Anthology, Classic, Comic and Graphic Novel, Crime and Detective, Drama
    #*      , Fable, Fairy Tale, Fan-Fiction, Fantasy, Historical Fiction, Horror, Science Fiction, Humor
    #*      , Biography/Autobiography ,Romance, Short Story, Essay, Memoir, Poetry, Thrillers, Young adults           


    # TODO: verify users see 23 book categories

    
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.