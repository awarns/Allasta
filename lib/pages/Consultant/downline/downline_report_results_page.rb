class DownlineResultsReportPage
  include PageObject

  select_list(:group_focus, :id => "group_focus")
  table(:downline_results, :id => "DataGrid1")
  table(:team_downline_results, :id => "MasterContentBody1_DataGrid1")


  def verify_list_view_results

    downline_results.should =~ /.*Level.*/
    downline_results.should =~ /.*ID.*/
    downline_results.should =~ /.*Name.*/
    downline_results.should =~ /.*Email.*/
    downline_results.should =~ /.*Tools.*/
    downline_results.should =~ /.*Title.*/
    downline_results.should =~ /.*Entry Date.*/
    downline_results.should =~ /.*Recruits.*/

  end

  def verify_team_view_results

    sleep(2)
    self.group_focus = "All (Expanded)"
    sleep(2)
    name =  team_downline_results_element[25][2].text
    name.should_not == nil

  end





end