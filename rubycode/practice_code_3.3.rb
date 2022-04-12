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

  if $no_of_alphabets > 7 &&  $no_of_numbers > 7 && $no_of_symbols > 7
    break
  end
end

flag = true

while flag == true
  $password = password_generator($no_of_alphabets, $no_of_numbers, $no_of_symbols)

  CSV.foreach(("myfile.csv"), "a+") do |row|
    row = row[0].to_s
    pass = $password.to_s
    if row == pass
      $set_condition = -1
    end
  end

  if $set_condition == -1
    redo
  end

  CSV.open("myfile.csv", "a+") do |csv|
    csv << [$password]
  end
  flag = false
end
