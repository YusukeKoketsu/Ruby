# 自分で好きな数字を入力する
# def fizz_buzz(number)
#   if number % 15 == 0
#     "FizzBuzz"
#   elsif number % 3 == 0
#     "Fizz"
#   elsif number % 5 == 0
#     "Buzz"
#   else
#     number.to_s
#   end
# end

# puts "数字を入力してください。"

# input = gets.to_i

# puts '結果は...'
# puts fizz_buzz(input)

# eachを使用し範囲指定1~100
# (1..100).each do |num|
#   if num % 15 == 0
#     puts "FizzBuzz"
#   elsif num % 3 == 0
#     puts "Fizz"
#   elsif num % 5 == 0
#     puts "Buzz"
#   else
#     puts num.to_i
#   end
# end

# forを使用し範囲指定1~30
for num in 1..30
  if num % 15 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num.to_i
  end
end