#set
a,b = gets.chomp.split(" ").map(&:to_i).sort {|a, b| b <=> a}

#main
def max_common_divisor(a, b)
  return a if b == 0
  
  return max_common_divisor(b, a % b)
end

p max_common_divisor(a,b)