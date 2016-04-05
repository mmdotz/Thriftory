class CalculateIncome

  def initialize(user)
    @user = user
    @items = user.items
    @finances = user.finances
  end

  #  returns hash with item id key, array of finance objects value
  def items_with_finances
    @finances.each_with_object({}) do |finance, hsh|
      hsh[finance.item] ||= []
      hsh[finance.item] << finance
    end
  end

  #  in console, returns hash with item id key, array of buyer_pmts as value
  def items_with_finances_2
    user = User.find(2)
    finances = user.finances
    finances.each_with_object({}) do |finance, hsh|
      hsh[finance.item] ||= []
      hsh[finance.item] << finance.buyer_pmt
    end
  end

  #  returns hash with category object key, array of item objects value
  def items_by_category
    @items.each_with_object({}) do |item, hsh|
      hsh[item.category.name] ||= [] # sets key to cat name
      hsh[item.category.name] << item
    end
  end

  def call #change this for calc
    Hash[Category.all.map(&:finances).map { |fin_array| fin_array.map(&:buyer_pmt).sum
    }.map.with_index { |amt, index| [Category.find(index + 1).name, amt] }]
  end

end
