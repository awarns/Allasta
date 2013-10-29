class CsrContactManagementPage
  include PageObject
  include DataMagic

  page_url "#{FigNewton.base_url}/employee/admin/frm_customer_management.aspx"

  button(:search, :value => "Search")
  select_list(:search_in, :id => "ContentPlaceHolder1_ddl_in_region")
  text_field(:consultant_id, :id => "ContentPlaceHolder1_txt_main_idnumber")
  text_field(:search_text, :id => "ContentPlaceHolder1_txt_search")


  def search_contact_management(data ={})

    populate_page_with data_for(:csr_contacts, data)
    search

  end


end