languages = ["日本語", "英語", "スペイン語"]

# インデックス番号が1の要素を出力してください
puts languages[1]

# インデックス番号が0の要素を使って「◯◯を話せます」となるように出力してください
puts "#{languages[0]}を話せます"

# each文を用いて、要素ごとに「○○を話せます」と出力してください
languages.each do |language|
  puts "#{language}を話せます"
end