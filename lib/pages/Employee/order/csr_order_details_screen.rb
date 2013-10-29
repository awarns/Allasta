class CsrOrderDetailsScreen
  include PageObject
  include DataMagic


  in_frame(:name => "order_top") do |frame|
    button(:add_to_order, :value => "Add To Order", :frame => frame)
    select_list(:select_pricing_level, :id => "PriceLevelList", :frame => frame)
    text_field(:product_number, :id => "Itemcode", :frame => frame)
    text_field(:quantity, :id => "QuantityList", :frame => frame)
  end


  def csr_add_product_to_order(data ={})

    populate_page_with data_for(:csr_order_product, data)

  end


end