# initializeメソッドは、「クラス名.new」でインスタンスを生成した直後に自動で呼び出される
class Menu
  attr_accessor :name
  attr_accessor :price

  # initializeメソッドを書き換えてください
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info
    return "#{self.name} #{self.price}円"
  end

  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 100
    end

    # 今日が日曜日ならば、100円割引
    if count >= 1 && Menu.is_discount_day?
      total_price -= 100
    end

    return total_price
  end

  # 今日は日曜日ですか?
  def Menu.is_discount_day?
    today = Date.today
    return today.sunday?
  end


end