# set
n,m = gets.chomp.split(" ").map(&:to_i)
days_arr = Array.new
days_arr = gets.chomp.split(" ").map(&:to_i)
require_days = 0
0.upto(m - 1) do |i|
  require_days += days_arr[i]
end

# main
answer = n - require_days
answer = -1 if require_days > n
print ("#{answer}\n")