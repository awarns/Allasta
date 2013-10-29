Feature: Csr Follow Up Creation

  As a csr I want to
  enter a Follow Up for a consultant

Background:
  Given I am on the Employee Admin site

  Scenario: Add A follow up as a csr
    When I add a follow up as a csr
    Then I should see "The follow-up(s) for id #102091 has been saved."