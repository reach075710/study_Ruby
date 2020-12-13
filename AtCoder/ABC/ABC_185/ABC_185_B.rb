# Set
n,m,t = gets.chomp.split(" ").map(&:to_i)
n_max = n
t_tmp = 0
a_arr = []
b_arr = []
result = "Yes"

0.upto(m - 1) { |i| 
  a_arr[i],b_arr[i] = gets.chomp.split(" ").map(&:to_i)
} 

# Main
0.upto(m - 1) { |i|
  n = n - (a_arr[i] - t_tmp)
  if n <= 0 then
    result = "No"
    break
  end
  t_tmp = b_arr[i]

  n = n + (b_arr[i] - a_arr[i])
  if n > n_max then
    n = n_max
  end
}

n = n - (t - t_tmp)
if n <= 0 then
  result = "No"
end
print ("#{result}\n")