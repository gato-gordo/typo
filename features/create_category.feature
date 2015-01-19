Feature: Create Category
  As a blog administrator
  In order to be able to correctly classify and organize my articles with similar content
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    When I follow "Categories"
    Then I should be on the new categories page
    When I fill in "Name" with "20th Century Modernism"
    And I fill in "Keywords" with "Time Period"
    And I fill in "Description" with "Everything from Fauvism, to Cubism, to Surrealism, to Abstract Expressionism"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "20th Century Modernism"
    And I should see "Time Period"
    And I should see "Fauvism"
