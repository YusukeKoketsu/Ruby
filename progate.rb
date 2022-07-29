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