class Stats

  # @items = current_user.items
  def c_u_items
    current_user.items
  end

  def c_u_finances
    current_user.finances
  end

  # @inventory = current_user.items.count
  def c_u_inventory
    c_u_items.count
  end

  # @total_week_items = @items.where("items.created_at > ?", Time.now-7.days).count
  def total_week_items
    c_u_items.where("items.created_at > ?", Time.now-7.days).count
  end

  def moneyin
    c_u_finances.sum("buyer_pmt")
  end

  def moneyout
    c_u_finances.all.map { |finance| finance.item_total_outlay }.sum
  end

  #this needs be be filtered thru the current_user, showing db totals
  @payment_by_category = Hash[Category.all.map(&:finances).map { |fin_array| fin_array.map(&:buyer_pmt).sum
  }.map.with_index { |amt, index| [Category.find(index + 1).name, amt] }]


  @furniture_expense = Category.find(1).finances.map{ |f| f.item_total_outlay }.sum
  @clothing_expense = Category.find(2).finances.map{ |f| f.item_total_outlay }.sum
  @household_expense = Category.find(3).finances.map{ |f| f.item_total_outlay }.sum
  @other_expense = Category.find(4).finances.map{ |f| f.item_total_outlay }.sum

end
