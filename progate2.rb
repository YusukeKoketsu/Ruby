# def price_with_shipping(price)
# 	# priceが5000以上のとき、戻り値としてpriceを返すif文を作成してください
#   if price >= 5000
#     return price
#   end
#   # priceに500を加えた値を戻り値として返してください
# 	return price + 500
# end

# puts "商品の合計金額は3000円です"
# puts "お支払い金額は、送料込みで#{price_with_shipping(3000)}円です"
# puts "-----------"
# puts "商品の合計金額は10000円です"
# puts "お支払い金額は、送料込みで#{price_with_shipping(10000)}円です"

# # 1 定義側で、引数の後にコロンを付ける
# # 2 呼び出し側で、値の前に引数名を書く
# # キーワード引数を使うように書き換えてください
# def buy(item:, price:, count:)
# 	puts "#{item}を#{count}台のお買い上げです"
# 	puts "合計金額は#{price * count}円です"
# end

# # キーワード引数を使うように書き換えてください
# buy(item: "テレビ", price: 15000, count: 2)

# クラスのデータを定義する方法の1つに「attr_accessor シンボル」を使う方法があります
# class Menu
#   attr_accessor :name
#   attr_accessor :price
#   def info
#     # 変数「self」に、呼び出したインスタンス自身が代入される
#     # 「#{}」の中身を埋めてください
#     return "#{self.name} #{self.price}円"
#   end

#   # get_total_priceメソッドを定義してください
#   # countが3以上の場合は合計から100を引く
#   def get_total_price(count)
#     total_price = self.price * count
#     if count >= 3
#       total_price -= 100
#     end
#     return total_price
#   end

# end

# menu1 = Menu.new

# menu1.name = "ピザ"
# puts menu1.name

# # menu1のpriceに「800」を代入してください
# menu1.price = 800

# # menu1のpriceを出力してください
# puts menu1.price

# # Menuクラスのインスタンスを生成して変数menu2に代入してください
# menu2 = Menu.new

# # menu2のnameに「すし」を代入してください
# menu2.name = "すし"

# # menu2のnameを出力してください
# puts menu2.name

# # menu2のpriceに「1000」を代入してください
# menu2.price = 1000

# # menu2のpriceを出力してください
# puts menu2.price

# puts menu1.info

# # menu1に対してget_total_priceメソッドを呼び出してください
# puts menu1.get_total_price(3)
# require "./menu"とすることで、menu.rbのコードを読み込める
require "./menu"

menu1 = Menu.new(name: "ピザ", price: 800)
menu2 = Menu.new(name: "すし", price: 1000)
menu3 = Menu.new(name: "コーラ", price: 300)
menu4 = Menu.new(name: "お茶", price: 200)

# 変数menusを定義して配列を代入してください
menus = [menu1, menu2, menu3, menu4]
index = 0
# menusに対して繰り返し処理を実行してください
menus.each do |menu|
  puts "#{index}. " + menu.info
  index += 1
end

puts "--------------"
puts "メニューの番号を選択してください"

# 入力を数値として受け取って変数orderに代入してください
order = gets.to_i

# 選択されたメニューのインスタンスを変数selected_menuに代入してください
selected_menu = menus[order]

# 「選択されたメニュー: ○○」となるように出力してください
puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円割引)"

# 入力を数値として受け取って変数countに代入してください
count = gets.to_i

# 「お会計は○○円です」となるように出力してください
puts "お会計は#{selected_menu.get_total_price(count)}円です"