# あるクラスを元にして新たなクラスをつくることを「継承」と呼ぶ
# 新しいクラスは「子クラス」、元となるクラスは「親クラス」
# class 新しいクラス名 < 元となるクラス名
require "./menu"

# FoodはMenuの子クラスになるので、name,price,calorieの3つのインスタンス変数を持つことになる
class Food < Menu
  attr_accessor :calorie
  # calorie_infoメソッドを定義してください
  def calorie_info
    return "#{self.name}は#{self.calorie}kcalです"
  end
end