languages = ["日本語", "英語", "スペイン語"]

# 要素の中身をすべて表示
puts languages

# インデックス番号が1の要素を出力してください
puts languages[1]

# インデックス番号が0の要素を使って「◯◯を話せます」となるように出力してください
puts "#{languages[0]}を話せます"

# each文を用いて、要素ごとに「○○を話せます」と出力してください
languages.each do |language|
  puts "#{language}を話せます"
end

exam = {"subject" => "Math", "score" => 80}

# キー「"subject"」の値を出力してください
puts exam["subject"]

# キー「"subject"」の値を「"Science"」に更新してください
# 書き換えが可能
exam["subject"] = "Science"

# もう一度、キー「"subject"」の値を出力してください
puts exam["subject"]

# キーが「"grade"」、値が「"good"」の要素を追加してください
exam["grade"] = "good"

# キー「"grade"」の値を出力してください
puts exam["grade"]

# 省略した書き方で書き換えてください
exam = {subject: "Math", score: 80}

puts "#{exam[:subject]}: #{exam[:score]}点"

# examにscoreがなくnilになるため、47行目が実行される
exam = {subject: "Math"}

# 条件式にキー「:score」の値を使うif文をつくってください
if exam[:score]
  puts "#{exam[:subject]}の結果は#{exam[:score]}点です"
else
  puts "#{exam[:subject]}の結果は分かりません"
end


# 配列[インデックス番号][キー]で、特定のハッシュの値を用いることができる インデックス番号は上から0,1,2...となる
exams = [
  {subject: "Math", score: 80},
  {subject: "Science", score: 55}
]

# インデックス番号が1の要素の、キーが「:score」の値を出力してください
# 55が表示
puts exams[1][:score]

# each文を用いて、要素ごとに「○○の結果は△△点です」と出力してください
exams.each do |exam|
 puts "#{exam[:subject]}の結果は#{exam[:score]}点です"
end

characters = [
  {name: "にんじゃわんこ", age: 14},
  {name: "ひつじ仙人"},
  {name: "ベイビーわんこ", age: 5},
  {name: "とりずきん"}
]

characters.each do |character|
  puts "--------------------"
  puts "名前は#{character[:name]}です"

  # キー:ageの値に応じて年齢の情報を出力してください
  # ageがあれば表示
  if character[:age]
    puts "年齢は#{character[:age]}歳です"
  else
    puts "年齢は秘密です"
  end
end

# 「def メソッド名(引数名)」とすることで、引数を指定することできる
# 引数を渡してメソッドを呼び出すには、「メソッド名(値)」とする  引数（ひきすう）とはメソッドに与える追加情報
def introduce(name)
  puts "こんにちは"
  puts "私は#{name}です"
end

# 引数を渡してメソッドを呼び出してください
introduce("koketsu")

def print_info(item, price)
  puts "わんこでんきへようこそ！"
  puts "今日は#{item}がセール中で#{price}円です！"
end

# print_infoメソッドを呼び出してください
print_info("SDカード", 1200)

def discount(price)
  # 「price / 2」を戻り値として返してください
	return price / 2
end

puts "テレビがセール中です！"

# discountメソッドを呼び出し、その戻り値を変数half_priceに代入してください
half_price = discount(15000)

# 変数half_priceを用いて、「特別価格で〇〇円です」となるように出力してください
puts "特別価格で#{half_price}円です"

# shipping_free?メソッドを定義してください
def shipping_free?(price)
	return price >= 5000
end

# 真偽値を返すメソッドは、メソッド名の末尾に「?」をつける
# if文の条件式でshipping_free?メソッドを呼び出してください
if shipping_free?(3000)
	puts "5000円以上のお買い上げなので送料はいただきません"
else
	puts "追加で送料をいただきます"
end