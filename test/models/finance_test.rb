require 'test_helper'

class FinanceTest < ActiveSupport::TestCase

  def setup
    @finance = finances(:finance_one)
    # @finance = finances(:finance_one) # has item, valid
    @finance = finances(:finance_two) # has no item, invalid
    @item_total_outlay = @finance.procure_cost + @finance.shipping_cost + @finance.pre_sale_cost
  end

  def test_validity
    assert(@finance.valid?)
  end

  def test_invalid_without_item #failing
    @finance.item = nil
    assert(@finance.invalid?)
    assert(@finance.valid?, "fail ok using finance_two")
  end

  def test_invalid_without_item #failing ok because the fixture creates a valid object
    # binding.pry
    assert(@finance.invalid?, "fail ok using finance_one")
  end

  def test_item_total_outlay
    assert_equal(3, @item_total_outlay )
  end


  def test_sum_total_outlay
    skip
    #this requires all current_user's finances
   end

  def test_item_profit? #current fixtures make item non profitable
      assert(true, @finance.buyer_pmt > @finance.item_total_outlay)
    @current_user.finances
  end

  def test_item_profit? #current fixtures make item non profitable, why would we test this?
    # binding.pry
    assert_equal(true, @finance.buyer_pmt > @finance.item_total_outlay, "fail ok with finance_one")
  end

end
