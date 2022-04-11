class Countfrequency
  def computefrequency=(arr)
    dict = {}
    dict.default = 0
    arr.each do |i|
      dict[i] += 1
    end
    dict.each do |x,y|
      puts "#{x}=>#{y}"
    end
  end
end

arr = [1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33]
obj = Countfrequency.new
obj.computefrequency = arr
