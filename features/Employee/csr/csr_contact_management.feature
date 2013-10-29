Feature: Csr Contact Management Feature

  As a Csr
  I want the ability to manage a consultants contacts

Background:
  Given I am on the Employee Admin site

  Scenario: Search Contacts
    When I search contacts as an employee
    Then I should see "Select"
    And I should see "Follow-Up"
