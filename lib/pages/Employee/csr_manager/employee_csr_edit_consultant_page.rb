class EmployeeCsrEditConsultantPage
  include PageObject
  include DataMagic


  link(:save, :id => "ContentPlaceHolder1_save1")
  text_field(:password, :id => "ContentPlaceHolder1_password")
  text_field(:middle_name, :id => "ContentPlaceHolder1_middle")

  def csr_edit_consultant(data ={})

    populate_page_with data_for(:csr_edit_profile, data)
    save

  end


end