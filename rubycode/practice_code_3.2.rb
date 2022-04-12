arr = [1, 2, 3, 4, 5]
lst = []
sum = 0
arr.each do |x|
  sum += x
  lst.push(sum)
end
puts lst


a = "5"
b = 5
puts a == b
