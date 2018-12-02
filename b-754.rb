str = gets.chomp
out = 0

def get_abs(str, num)
  indexs = []
  offset = 0
  loop do
    index = str.index(num.to_s, offset)
    break unless index

    offset = index + 1
    indexs << index
  end

  abs = 753
  indexs.each do |index|
    substr = str[index, 3]
    next if substr.size != 3

    abs = (753 - substr.to_i).abs if abs > (753 - substr.to_i).abs
  end

  abs
end

(7..9).each do |i|
  out = 753
  abs = get_abs(str, i)
  break out = abs if abs != 753
end

(1..6).reverse_each do |i|
  abs = get_abs(str, i)
  if out > abs
    out = abs
  end
end
puts out
