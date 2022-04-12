class CountFrequency
  def compute_frequency(array)
    dictionary = {}
    dictionary.default = 0
    array.each do |i|
      dictionary[i] += 1
    end
    dictionary.each do |x,y|
      puts "#{x}=>#{y}"
    end
  end
end

array = [1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33]
obj = CountFrequency.new
obj.compute_frequency(array)
