When(/^I run my downline report in "([^"]*)" as a csr$/) do |downline_type|

  visit CsrDownlinePage

  on(CsrDownlinePage).csr_run_downline(:downline_type => downline_type)


end