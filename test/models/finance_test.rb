require 'test_helper'

class FinanceTest < ActiveSupport::TestCase
  i_suck_and_my_tests_are_order_dependent!

  def setup
    @finance = finance(:finance_one)
    @item_total_outlay = @finance.procure_cost + @finance.shipping_cost + @finance.pre_sale_cost
  end

  def test_validity #wtf isn't this running??
    assert(@finance.valid?)
  end

  def test_invalid_without_item
    @finance.item = nil
    assert(@finance.invalid?)
  end

  def test_item_total_outlay
    assert_equal(3, @item_total_outlay )
  end


  def test_sum_total_outlay
    skip
    #this requires all current_user's finances
   end

  def test_item_profit? #current fixtures make item non profitable
    assert(@finance.buyer_pmt > @item_total_outlay)
    # check self.buyer_pmt > self.item_total_outlay
    # given i have an item with seller costs (buyer costs may be 0)
    # when I add up the seller costs
    # and compare it to the buyer_pmt
    # it will return true if the buyer_pmt is greater than sum of seller costs
  end

end
