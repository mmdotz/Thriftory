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

    @finance = @item.finances.create({
      procure_cost:   0,
      shipping_cost:  0,
      pre_sale_notes: "Lorem ipsum",
      pre_sale_cost:  0,
      buyer_pmt:      0,
      item_id:        @item.id
      })

    @photo = @item.photos.create({
      # id is nil when uploaded from inside project
      image_id: "98t79nil",
      item_id:  @item.id
      })
  end

  def test_dependency_deleted_on_item_destroy   # given I have an item with finances
    finance_count = Finance.count
    @item.destroy                               # and I delete the item, failing here on FK constraint - not recognizing model dependent: :destroy
    assert_equal(finance_count - 1, Finance.count)
  end

  def test_item_has_a_finance
		assert_not_nil(@item.finances)
	end

  def test_item_create #passing
    assert_instance_of Item, @item
  end

  def test_item_primary_photo
    # if item has photo, return primary_photo
    assert_not_nil(@item.primary_photo.id)
    # else return default photo
    @photo.destroy
    assert_nil(@item.primary_photo.id)

  end


end
