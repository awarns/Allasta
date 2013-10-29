When(/^I add items to my retail employee cart$/) do

  visit SelectAnOrderOptionPage

  navigate_all(:using => :csr_retail_order)

end