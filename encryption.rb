require 'digest'

array = ['MD5', 'SHA1', 'SHA2']

puts 'Введите слово или фразу для шифрования:'

user_str = STDIN.gets.chomp

puts 'Каким способом зашифровать:'

array.each.with_index(1) do |name, index|
  puts "#{index}. #{name}"
end

user_input = STDIN.gets.to_i
puts 'Вот что получилось:'

if user_input == 1
  puts Digest::MD5.hexdigest(user_str)
elsif user_input == 2
  puts Digest::SHA1.hexdigest(user_str)
else
  puts Digest::SHA2.hexdigest(user_str)
end
