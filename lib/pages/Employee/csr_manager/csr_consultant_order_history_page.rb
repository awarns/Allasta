class CsrConsultantOrderHistoryPage
  include PageObject
  include DataMagic
  include FigNewton

  page_url "#{FigNewton.base_url}/employee/admin/frm_order_history.aspx"


  button(:retrieve_info, :value => "Retrieve Information")
  table(:table_orders, :id => "data_orders")
  text_field(:consultant_id_number, :id => "txt_idnumber")

  def search_order_history(data ={})

    populate_page_with data_for(:csr_ord_hist, data)
    retrieve_info

  end

  def view_order_popup

    sleep(5)
    ordernumber = table_orders_element[4][0].text
    link_element(:text => ordernumber).click

    attach_to_window(:url => 'orderno')

  end


end