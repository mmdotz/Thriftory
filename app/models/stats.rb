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
end
