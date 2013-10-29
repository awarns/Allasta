class CsrDownlinePage
  include PageObject
  include DataMagic
  include FigNewton

  page_url "#{FigNewton.base_url}/employee/admin/frm_genefilter.aspx"

  button(:run_downline_button, :value => "Run Downline")
  checkbox(:chk_consultant, :id => "chk_ranks_0")
  checkbox(:chk_senior_consultant, :id => "chk_ranks_1")
  checkbox(:chk_director, :id => "chk_ranks_2")
  select_list(:downline_type, :id => "ddl_type")
  text_field(:consultant_id, :id => "idnobox")

  def csr_run_downline(data ={})

    populate_page_with data_for(:csr_downline, data)

    check_chk_consultant
    check_chk_senior_consultant
    check_chk_director
    run_downline_button


  end



end