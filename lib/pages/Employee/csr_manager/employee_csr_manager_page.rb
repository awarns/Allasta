class EmployeeCsrManagerPage
  include PageObject
  include DataMagic

  page_url "#{FigNewton.base_url}/employee/admin/frm_CSR_Frames.aspx"


  link(:edit_profile, :text => "Edit Profile")
  link(:view_profile, :text => "View Profile")
  link(:view_downline, :text => "View Downline")
  link(:view_website, :text => "View Website")
  link(:auto_login, :text => "Auto Login")
  link(:send_email, :text => "Send Email")
  link(:refresh_link, :id => "ContentPlaceHolder1_btn_load")
  text_field(:id_number, :id => "ContentPlaceHolder1_txt_idno")
  in_frame(:index => 0) do |frame|
    link(:view_link, :text => "View", :frame => frame)
    link(:edit_link, :text => "Edit", :frame => frame)
  end
  in_frame(:index => 1) do |frame|
    link(:modify_view, :text => "Modify / View", :frame => frame)
  end
  in_frame(:index => 2) do |frame|
    link(:commissions_details, :text => "Details", :frame => frame)
  end
  in_frame(:index => 3) do |frame|
    link(:view_orders_link, :text => "View Orders", :frame => frame)
  end
  in_frame(:index => 4) do |frame|
    link(:subscription_history, :text => "History", :frame => frame)
  end




  def search_csr_manager(data ={})

    populate_page_with data_for(:csr_search, data)
    refresh_link

  end

  def edit_profile_as_csr

    edit_profile
    attach_to_window(:url => "frm_dist_entry")

  end

  def csr_auto_login

    auto_login

    attach_to_window(:url => 'VirtualOfficeHome')

  end

  def click_view_website

    view_website

    attach_to_window(:title => 'Welcome')

  end

  def csr_send_email

    send_email

    attach_to_window(:url => 'email')

  end

  def view_subscription_history

    sleep(3)
    subscription_history

    attach_to_window(:url => 'History')

  end

  def view_commission_details

    commissions_details

    attach_to_window(:url => 'Commission')

  end

  def csr_view_orders

    view_orders_link

    attach_to_window(:url => 'Volume')

  end

  def csr_view_accounts

    modify_view

    attach_to_window(:url => 'Accounts')

  end

  def view_existing_order

    view_link

    attach_to_window(:url => 'orderno')

  end



end