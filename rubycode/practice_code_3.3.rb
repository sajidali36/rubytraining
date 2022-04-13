require 'csv'
require 'byebug'

def password_generator(letter_count, number_count, symbol_count)
  letters = ('A'..'Z').to_a + ('a'..'z').to_a
  numbers = ('0'..'9').to_a
  symbols = ('!'..'?').to_a
  letters.sort_by { rand }.join[0...letter_count] + numbers.sort_by { rand }.join[0...number_count] + symbols.sort_by { rand }.join[0...symbol_count]
end

loop do
  puts "enter number of alphabets"
  $no_of_alphabets = gets.chomp.to_i
  puts "enter number of numbers"
  $no_of_numbers = gets.chomp.to_i
  puts "enter number of symbols"
  $no_of_symbols = gets.chomp.to_i

  break if $no_of_alphabets > 7 &&  $no_of_numbers > 7 && $no_of_symbols > 7
end

flag = true

while flag
  $password = password_generator($no_of_alphabets, $no_of_numbers, $no_of_symbols)
  $set_condition == 0

  CSV.foreach(("myfile.csv"), "a+") do |row|
    $set_condition = -1 if row[0].to_s == $password.to_s
  end

  redo if $set_condition == -1

  CSV.open("myfile.csv", "a+") { |csv| csv << [$password] }

  flag = false
end
