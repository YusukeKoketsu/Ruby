# DateクラスとはRubyがすでに用意しているクラスで,日付を扱う
# すでに用意されているクラスは、require "./date"のように書かない
require "date"

# 変数birthdayに、Dateクラスのインスタンスを代入してください
birthday = Date.new(1998, 12, 24)

# 変数birthdayをputsしてください
puts birthday

# 変数birthdayにsunday?メソッドを用いた結果をputsしてください
# 日曜日ならtrue 違うならfalse
puts birthday.sunday?

# 今日の日付
today = Date.today

puts today