# set
n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
now_where = 0
max = 0

0.upto(n - 1) do |i|
  0.upto(i) do |j|
    now_where += a_arr[j]
    max = now_where if max <= now_where
  end
end


print ("#{max}\n")