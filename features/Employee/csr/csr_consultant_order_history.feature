Feature: Csr Manager Consultant Order History

  As a csr employee
  I want the ability to view a consultants
  Order history

Background:
  Given I am on the Employee Admin site

  Scenario: View Order History PopUp
    When I view my order popup as a csr
    Then I should see "Order Number"
    And I should see "Order Type"
    And I should see "Status"


