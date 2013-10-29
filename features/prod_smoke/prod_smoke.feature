@prod_smoke

Feature: Prod Smoke Test

  Running a smoke test in Production prior
  to pps coming back online the morning of a release

  Background:
    Given I login to a virtual office in production

  Scenario: Update Shipping Info
    When I update my shipping info
    Then I should see my updated shipping info

  Scenario: Mailing Info Same as Shipping
    When I use the Mailing Info Same as Shipping Link
    Then My mailing info should match my shipping info

  Scenario: Run Downline in List View
    When I run my downline report in "List View"
    Then I should see my List View downline report

  Scenario: Run Downline in Team View
    When I run my downline report in "Team View"
    Then I should see my Team View downline report

  Scenario: Add a Contact
    When I Add a contact
    Then I should see "Information Saved"

  Scenario: Create an Invitation
    When I create an invitation
    Then I should see "My Events"

  Scenario: Create a Branded Email
    When I create a branded email
    Then I should see "Your email has been sent!"

  Scenario: Add Items to Order
    When I add an item to a business supply order
    Then I should see "$64.95"

  Scenario: Cancel Orders
    When I cancel my unsubmitted orders

  Scenario: Setup Party Order
    When I setup a party order
    Then I should see "Order Details"

  Scenario: Add Guests to Party
    When I continue my order
    And Add a ship to host guest to my party
    And Add a direct ship guest to my party
    Then I should see "Order Details"

  Scenario: Add items to Party Order
    When I continue my order
    And Add products to my guests
    Then I verify my party order totals,Retail:"$210.00",Volume:"$210.00",Subtotal:"$210.00",ShipHand:"$20.80",Tax:"$17.85",Total:"$248.65"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$210.00" Hostess Half Price "1 / 0" Hostess Credit "$25.00 / $25.00" Exclusive Hostess Offer "1 / 0" Hostess Overage "0"

  Scenario: Cancel Any Unsubmitted Orders
    When I cancel my unsubmitted orders

  Scenario: SetUp Retail Order
    When I setup a retail order
    Then I should see "Shop Online"

  Scenario: Add product to cart
    When I continue my order
    And I Add product "3000" to my cart
    And I personalize using Embroidery
    And I Add product "3244" to my cart
    And I personalize using Icon-It No Text
    Then I verify Order Totals, Product: "$72.00", Tax: "$5.72", Shipping : "9.76", Total: "$87.48"


  Scenario: Enter Event Details for Party Event
    When I Create a Party Event
    Then I should see "Invitations"

  Scenario: Enter Invitations Information
    When I enter invitation information
    Then I should see "New Guest"

  Scenario: Add Guest to Party
    When I add a guest to a party
    Then I should not see "No Guests have been invited to this event."

  Scenario: Edit Guest on Party
    When I edit a guest invited to a party
    Then I should see a Yes RSVP

  Scenario: Preview Invitations
    When I preview an invite
    Then I should see the invite

  Scenario: Send Invitations
    When I send an invitation
    Then I should see "Emails are scheduled to be sent to the following guests:"

  Scenario: View Order History Popup
    When I View an Order on the Order History Page
    Then I should see my order popup