class CsrShippingInformationPage
  include PageObject
  include DataMagic



  link(:save_and_continue, :id => "ContentPlaceHolder1_btn_save")
  table(:page_text, :class => "table_style")
  text_field(:first_name, :id => "ContentPlaceHolder1_ship_fname")
  text_field(:last_name, :id => "ContentPlaceHolder1_ship_lname")
  text_field(:address, :id => "ContentPlaceHolder1_shipping_info_txt_street_1")
  text_field(:zip_code, :id => "ContentPlaceHolder1_shipping_info_txtPostalCode")
  text_field(:email, :id => "ContentPlaceHolder1_email")

  def csr_order_shipping_info(data ={})

    populate_page_with data_for(:retail_shipping_info_page, data)


    while page_text =~ /.*Shipping Method.*/

      save_and_continue
      sleep(2)

    end


  end


end