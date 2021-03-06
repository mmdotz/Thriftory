class Finance < ActiveRecord::Base
  belongs_to :item, :autosave => true, :validate => true
  default_scope { order(updated_at: :desc) }


  def item_total_outlay
    procure_cost + shipping_cost + pre_sale_cost
  end

  def sum_total_outlay
    current_user.finances.all.map { |finance| finance.item_total_outlay }.sum
  end

  def item_profit? #single item buyer_pmt, item_total_outlay
    self.buyer_pmt > self.item_total_outlay
  end

end

