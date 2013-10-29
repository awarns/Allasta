When(/^I edit a consultants profile$/) do

  visit EmployeeCsrManagerPage
  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).edit_profile_as_csr
  on(EmployeeCsrEditConsultantPage).csr_edit_consultant


end

When(/^I view a consultants website$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).click_view_website

end

When(/^I send an email as a CSR$/) do

  visit EmployeeCsrManagerPage
  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).csr_send_email
  on(CsrEmailPage).csr_send_email_to_consultant

end

When(/^I view a consultants subscription history$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).view_subscription_history

end

When(/^I view a consultants commission details$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).view_commission_details

end

When(/^I view a consultants personal volume via orders$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).csr_view_orders

end

When(/^I view a consultants accounts info$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).csr_view_accounts

end

When(/^I add a note to a consultant$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).add_note
  on(CsrNewNotePage).enter_note_details

end


Then(/^I should see my added note$/) do

  on(EmployeeCsrManagerPage).verify_note

end

When(/^I view a consultants order$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).view_existing_order


end

When(/^I edit an order as a csr$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager

end