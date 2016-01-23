require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  def valid_item_params
    {
      description: "vintage basketball signed by Julius Irving",
      quantity:   1,
      shipping:   "buyer",
      subcat2_id: 3,
      source_id:  4, #where do I define the source?
      id:         45
    }
  end

  def valid_finance_params
    {
      procure_cost:   0,
      shipping_cost:  0,
      pre_sale_notes: "Lorem ipsum",
      pre_sale_cost:  0,
      buyer_pmt:      0,
      item_id:        45 #how do I choose the previously made item other than nesting?
    }
  end

  def test_dependency_destroyed_on_item_delete
    item = Item.create(valid_item_params)       #given i create an item with finances
		item.finances.create!(valid_finance_params)
    item.destroy                                #and I delete the item
		assert_difference(-1, 'Finance.count')      #then the assoc. finance is destroyed
	end


end


=begin

def item_params
  params.require(:item).permit(:category_id, :subcat1_id, :subcat2_id,
  :description, :quantity, :shipping, :storage_loc, :status, :source_id, :condition, :status,
  finances_attributes: [:id,:procure_cost, :shipping_cost, :pre_sale_cost, :buyer_pmt] )
end

=end
