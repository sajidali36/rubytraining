class CountFrequency
  def compute_frequency(input)
    count_occurrence = {}
    count_occurrence.default = 0
    input.each do |i|
      count_occurrence[i] += 1
    end
    count_occurrence.each do |x,y|
      puts "#{x}=>#{y}"
    end
  end
end

input = [1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33]
output = CountFrequency.new
output.compute_frequency(input)
