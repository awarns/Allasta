class CsrEmailPage
  include PageObject
  include DataMagic

  button(:send_email_button, :value => "Send Email")
  text_field(:subject, :id => "ContentPlaceHolder1_txt_subject")


  def csr_send_email_to_consultant

    self.subject = "Hey Whats Good?"
    send_email_button

  end


end