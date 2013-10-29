class CsrFollowUpPage
  include PageObject
  include DataMagic
  include FigNewton

  page_url "#{FigNewton.base_url}/employee/admin/frm_followup_entry.aspx"

  button(:save_follow_up, :value => "Save New Follow-Up")
  checkbox(:option_1, :id => "ContentPlaceHolder1_chk_follow_options_0")
  checkbox(:option_2, :id => "ContentPlaceHolder1_chk_follow_options_1")
  checkbox(:option_3, :id => "ContentPlaceHolder1_chk_follow_options_2")
  text_field(:contact_of_consultant, :id => "ContentPlaceHolder1_customer_info_txt_idnumber")
  text_field(:f_name, :id => "ContentPlaceHolder1_customer_info_txt_first_name")
  text_field(:l_name, :id => "ContentPlaceHolder1_customer_info_txt_last_name")
  text_field(:address_line_1, :id => "ContentPlaceHolder1_customer_info_shipping_info_txt_street_1")
  text_field(:zip_code, :id => "ContentPlaceHolder1_customer_info_shipping_info_txtPostalCode")


  def csr_add_follow_up(data ={})

    populate_page_with data_for(:follow_up_page, data)
    self.contact_of_consultant = '102091'
    save_follow_up

  end

end