require 'csv'
$letters = ('0'..'9').to_a
$numbers = ('A'..'Z').to_a + ('a'..'z').to_a
$symbols = ('!'..'?').to_a

def password_generator(lettercount, numbercount, symbolcount)
  $letters.sort_by { rand }.join[0...lettercount] + $numbers.sort_by { rand }.join[0...numbercount] + $symbols.sort_by { rand }.join[0...symbolcount]
end

loop do
  puts "enter number of alphabets"
  $no_of_alphabets = gets.chomp.to_i
  puts "enter number of numbers"
  $no_of_numbers = gets.chomp.to_i
  puts "enter number of symbols"
  $no_of_symbols = gets.chomp.to_i
  total_length = $no_of_alphabets + $no_of_numbers + $no_of_symbols
  if total_length > 7
    break
  end
end

flag = true
while flag == true
  $password = password_generator($no_of_alphabets, $no_of_numbers, $no_of_symbols)
  CSV.foreach(("myfile.csv"), "a+") do |row|
    redo if row == $password
  end
  CSV.open("myfile.csv", "a+") do |csv|
    csv << [$password]
  end
  flag = false
end
