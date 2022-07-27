# 比較演算子
# 右辺の方が大きい　<
# 右辺の方が大きい、または等しい <=
# 左辺の方が大きい >
# 左辺の方が大きい、または等しい >=
total = 100
if total < 200
  puts "合計は200未満です。"
end

# 処理がされない例
if total >= 150
  puts "合計は150以上です。"
end

# 論理演算子
# 否定 !
# どちらの条件も正しければtrue &&
# どちらかの条件が正しければtrue ||
# 右辺と左辺が等しい ==
# 右辺と左辺が等しくないとき !=
hand = "グー"
if hand == "グー"
  puts "出したのはグーです。"
end

if hand != "チョキ"
  puts "出したのはチョキではありません。"
end

if (hand == "グー") || (hand == "パー")
  puts "出した手はグーまたはパーです。"
end

score = 70
if (score >= 50 || scoer <= 100)  && score >= 80
  puts "得点は50点以上または100点以下で、かつ80点以上です。"
end

if score >= 50 || (score <= 100  && score >= 80)
  puts "得点は50点以上、または80点以上100点以下です。"
end

apple = "Nagano"

if apple == "Aomori"
  puts "このリンゴは青森県産です。"
elsif apple == "Nagano"
  puts "このリンゴは青森県産ではなく、長野県産です。"
else
  puts "このリンゴは青森県産でも長野県産でもありません。"
end

total_price = 50
if total_price > 100
  puts "みかんを購入。所持金に余りあり。"
elsif total_price == 100
  puts "みかんを購入。所持金は0円。"
else
  puts "みかんを購入することができません。"
end

# while式は、繰り返し処理を行いたいときに使う。指定した条件式が真（true）の間、繰り返し実行する。
# 変数diceに0を代入し、初期値を設定する
#  randは乱数で、ランダムに数値を出力する。 diceが6でない限り繰り返し同じ処理をする
dice = 0
while dice != 6 do
  dice = rand(1..6)
  puts dice
end

# for式は、指定したオブジェクトから順に値を取り出しながら繰り返し処理する 今回の場合は1,2,3,4,5,6となる
for i in 1..6 do
  puts i
end

# eachメソッドは、オブジェクト内の要素を順に取り出すメソッド
#ハッシュの内容を順にキーをfruit、値をamountに代入して繰り返す
amounts = {"リンゴ"=>2, "イチゴ"=>5, "オレンジ"=>3}
amounts.each do |fruit, amount|
  puts "#{fruit}は#{amount}個です。"
end

# breakは、繰り返し処理を中断するメゾッド
i = 1
while i <= 10 do
  if i == 5
    puts "処理を終了します。"
    break
  end
  puts i
  # i = i +1
  i += 1
end