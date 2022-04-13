class CountFrequency
  def compute_frequency(input)
    count_occurrence = {}
    count_occurrence.default = 0
    input.each { |i| count_occurrence[i] += 1 }
    count_occurrence.each { |x,y| puts "#{x}=>#{y}" }
  end
end

input = [1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33]
output = CountFrequency.new
output.compute_frequency(input)
