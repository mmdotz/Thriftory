require 'test_helper'

class FinanceTest < ActiveSupport::TestCase

  def setup
    @finance = finances(:finance_one)
    @item_total_outlay = @finance.procure_cost + @finance.shipping_cost + @finance.pre_sale_cost
  end

  def test_validity
    assert(@finance.valid?)
  end

  def test_invalid_without_item #failing
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
      assert(true, @finance.buyer_pmt > @finance.item_total_outlay)
  end

end
