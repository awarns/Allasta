class CsrNewNotePage
  include PageObject
  include DataMagic


  button(:save_note, :value => "Save")
  text_field(:description, :id => "ContentPlaceHolder1_txt_note_desc")
  text_area(:details, :id => "ContentPlaceHolder1_txt_new_note")

  def enter_note_details(data={})

    populate_page_with data_for(:csr_add_note, data)
    save_note

    @browser.alert.resend



  end



end