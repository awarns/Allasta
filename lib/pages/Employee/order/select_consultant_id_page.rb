class SelectConsultantIdPage
  include PageObject
  include DataMagic



  button(:enter_order, :value => "Enter Order")
  text_field(:id_number, :id => "ContentPlaceHolder1_idnobox")

  def enter_consultant_id(data ={})

    populate_page_with data_for(:csr_search, data)
    enter_order

  end



end