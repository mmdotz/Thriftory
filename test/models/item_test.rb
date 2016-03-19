require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  def setup
    @source  = Source.create({
      name:   "Bill's Pearls",
      date:   "3/17/2016",
      address: "3601 Congress Avenue, Austin, TX 78701",
      type_of: "store"
      })

    @subcat2 = Subcat2.create({
      name:   "Books"
      })

    @item = Item.create({
      description: "vintage basketball signed by Julius Irving",
      quantity:    1,
      shipping:    "buyer",
      subcat2_id:  @subcat2.id,
      source_id:   @source.id, 
    })

    @finance = Finance.create({
      procure_cost:   0,
      shipping_cost:  0,
      pre_sale_notes: "Lorem ipsum",
      pre_sale_cost:  0,
      buyer_pmt:      0,
      item_id:        @item.id
      })
  end

  def test_dependency_deleted_on_item_destroy
    @item.destroy                                #and I delete the item
		assert_difference(-1, @item.finances.count)  #then the assoc. finance is destroyed
	end

  def test_item_create #passing
    assert_instance_of Item, @item
  end


end
