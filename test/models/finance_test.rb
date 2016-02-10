require 'test_helper'

class FinanceTest < ActiveSupport::TestCase

  def finance
    finance(:finance_one)
  end

  def test_valid
    assert finance.valid?
  end

  def test_invalid_without_user
    finance.user = nil
    assert finance.invalid?
  end

  def test_item_total_outlay
    assert_equal(3, finance.procure_cost + finance.shipping_cost + finance.pre_sale_cost)
  end


  def test_sum_total_outlay
    skip
    #assert_equal(,)
  end

  def test_item_profit? #single item buyer_pmt, item_total_outlay
    skip
    # check self.buyer_pmt > self.item_total_outlay
    # given i have an item with seller costs (buyer costs may be 0)
    # when I add up the seller costs
    # and compare it to the buyer_pmt
    # it will return true if the buyer_pmt is greater than sum of seller costs
  end

end
