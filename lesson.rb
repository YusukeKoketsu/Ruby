# 入力した2つの整数で掛け算する
# to_iで入力された文字を整数に直す
# puts "2つの好きな数字を入力してください。"
# a = gets.to_i
# b = gets.to_i

# puts "入力した数字の掛け算をします"
# puts "#{a}x#{b} = #{a*b}"
# puts "計算を終了します。"

# 入力した2つの数字で四則演算をする 何回処理をするかを決める
puts "何回計算をしますか？"
n = gets.to_i
count = 1
puts "計算を#{n}回します。"
while count <= n do
puts "2つの好きな数字を入力してください。"
a = gets.to_i
b = gets.to_i
puts "計算#{count}回目"
puts "#{a}+#{b} = #{a+b}"
puts "#{a}-#{b} = #{a-b}"
puts "#{a}x#{b} = #{a*b}"
puts "#{a}÷#{b} = #{a/b}"
puts "#{count}目の計算を終了します。"
count += 1
end
puts "ご利用ありがとうございました。"