require "./menu"

# DrinkはMenuの子クラスになるため、name,price,amountの3つのインスタンス変数を持つことになる
class Drink < Menu
  attr_accessor :amount
end