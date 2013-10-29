class SelectAnOrderOptionPage
  include PageObject
  include DataMagic
  include FigNewton


  page_url "#{FigNewton.base_url}/employee/admin/frm_orderchoose.aspx"

  link(:party_order, :text => "Party Order ($200 min)")
  link(:retail_order, :text => "Retail Customer Order")
  link(:replacement_order, :text => "Replacement Order")

  def choose_party_order

    party_order

  end

  def choose_retail_order

    retail_order

  end

  def choose_replacement_order

    replacement_order

  end


end