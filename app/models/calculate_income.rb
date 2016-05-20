class CalculateIncome

  def initialize(user)
    @user = user
    @items = @user.items
    @finances = @user.finances
  end

  #  initial return is hash with key of category name and value of array of buyer_pmts, then summed
  def income_by_category
    hash = @finances.each_with_object({}) do |finance, hsh|
      hsh[finance.item.category.name] ||= []
      hsh[finance.item.category.name] << finance.buyer_pmt
    end
    new_hash = Hash[hash.map { |k,v| [k, v.inject(:+)]}]
  end

  # ok this should probably be a separate service object since I named it wrong
  def expense_by_category
    hash = @finances.each_with_object({}) do |finance, hsh|
      hsh[finance.item.category.name] ||= []
      hsh[finance.item.category.name] << finance.item_total_outlay
    end
    new_hash = Hash[hash.map { |k,v| [k, v.inject(:+)]}]
  end

end
