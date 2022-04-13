input = [1, 2, 3, 4, 5]
output = []
sum = 0
input.each do |x|
  sum += x
  output.push(sum)
end
puts output
