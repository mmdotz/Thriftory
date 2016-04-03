class CalculateIncome

  def initialize(user)
    @user = user
    @items = user.items
    @finances = user.finances
  end

  def call #change this for calc
    Hash[Category.all.map(&:finances).map { |fin_array| fin_array.map(&:buyer_pmt).sum
    }.map.with_index { |amt, index| [Category.find(index + 1).name, amt] }]
  end

  #  returns hash with category object key, array of item objects value
  def items_by_category
    @items.each_with_object({}) do |item, hsh|
      hsh[item.category.name] ||= [] # sets key to cat name
      hsh[item.category.name] << item
    end
  end

end
