require 'digest'

puts "Введите слово или фразу для шифрования:"
encrypt_item = STDIN.gets.chomp
puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
user_choice = STDIN.gets.to_i

result =
  case user_choice
  when 1
    Digest::MD5.hexdigest(encrypt_item)
  when 2
    Digest::SHA1.hexdigest(encrypt_item)
  else
    puts "Вы не выбрали способ шифрования!"
  end
puts "Зашифрованое сообщение: #{result}"