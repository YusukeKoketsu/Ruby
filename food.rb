# あるクラスを元にして新たなクラスをつくることを「継承」と呼ぶ
# 新しいクラスは「子クラス」、元となるクラスは「親クラス」
# class 新しいクラス名 < 元となるクラス名
require "./menu"

# FoodはMenuの子クラスになるので、name,price,calorieの3つのインスタンス変数を持つことになる
class Food < Menu
  attr_accessor :calorie
  # 親クラスにあるメソッドと同じ名前のメソッドを子クラスで定義すると、メソッドを上書きすることができます。これをメソッドの「オーバーライド」と呼ぶ
  # オーバーライドしたメソッドの中で「super」とすることで、親クラスの同名のメソッドを呼び出すことができる
  def initialize(name:, price:, calorie:)
    super(name: name, price: price)
    self.calorie = calorie
  end

  # オーバーライドをすると、子クラスのインスタンスは親クラスのメソッドではなく、子クラスで定義したメソッドを呼び出すようになる
  def info
    return "#{self.name} #{self.price}円 (#{self.calorie}kcal)"
  end

  def calorie_info
    return "#{self.name}は#{self.calorie}kcalです"
  end
end