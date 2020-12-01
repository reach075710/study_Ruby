# set
n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
move_sum = 0
move_max = 0
now_where = 0
max_where = 0

# Main
0.upto(n - 1) do |i|
  move_sum += a_arr[i]
  move_max = move_sum if move_max <= move_sum

  max_where = now_where + move_max if max_where <= now_where + move_max
  now_where += move_sum
end


print ("#{max_where}\n")