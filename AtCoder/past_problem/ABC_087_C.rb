#set
n = gets.chomp.to_i
candy_arr = Array.new(2) {Array.new(n,0)}
max_sum = 0
temp_sum = 0

0.upto(1) do |i|
  candy_arr[i] = gets.chomp.split(" ").map(&:to_i)
end

#main
0.upto(n -1) do |i|
  sum_top_line = 0
  sum_under_line = 0
  0.upto(i) do |j|
    sum_top_line += candy_arr[0][j]
  end
  
  (n - 1).downto(i) do |k|
    sum_under_line += candy_arr[1][k]
  end

  temp_sum = sum_top_line + sum_under_line
  max_sum = temp_sum if max_sum < temp_sum

end

p max_sum