input = [1, 2, 3, 4, 5]
output = []
sum = 0
input.each { |x| sum += x; output.push(sum) }
puts output
