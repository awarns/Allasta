Feature: Csr Downline

  As a Csr
  I want to run a consultants Downline Report
  and view the results

Background:
  Given I am on the Employee Admin site


  Scenario: Run Downline in List View
    When I run my downline report in "List View" as a csr
    Then I should see "Filtered Results For Downline Of"

  Scenario: Run Downline in Team View
    When I run my downline report in "Team View" as a csr
    Then I should see "Team: ID"
    And I should see "Select A Team"