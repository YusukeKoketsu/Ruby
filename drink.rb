require "./menu"

# DrinkはMenuの子クラスになるため、name,price,amountの3つのインスタンス変数を持つことになる
class Drink < Menu
  attr_accessor :amount
  def info
    return "#{self.name} #{self.price}円 (#{self.amount}mL)"
  end
end