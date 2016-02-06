class Stats

  def self.total_week_items(user)
    user.items.where("items.created_at > ?", Time.now-7.days).count
  end

  def self.moneyin(user)
    user.finances.sum("buyer_pmt")
  end

  def self.moneyout(user)
    user.finances.all.map { |finance| finance.item_total_outlay }.sum
  end

  def self.payment_by_category(user)
    Hash[Category.all.map(&:finances).map { |fin_array| fin_array.map(&:buyer_pmt).sum
    }.map.with_index { |amt, index| [Category.find(index + 1).name, amt] }]
  end
end
