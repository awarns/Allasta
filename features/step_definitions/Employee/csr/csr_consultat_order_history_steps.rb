When(/^I view my order popup as a csr$/) do

  visit CsrConsultantOrderHistoryPage

  on(CsrConsultantOrderHistoryPage).search_order_history
  on(CsrConsultantOrderHistoryPage).view_order_popup


end