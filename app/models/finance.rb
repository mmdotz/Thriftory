class Finance < ActiveRecord::Base
  belongs_to :item

  def total_outlay
    procure_cost + shipping_cost + pre_sale_cost
  end

  def profit?
    buyer_pmt > total_outlay
  end
end
