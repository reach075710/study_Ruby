# Set
n,m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i).sort
a_arr.insert(0,0)
a_arr.push(n + 1)
range_arr = []
if m != 0 then
  0.upto(m) { |i|
    range_arr[i] = a_arr[i + 1] - a_arr[i] - 1
  }
  range_arr.sort!.reject!{|e| e == 0}
  k = range_arr[0]
end
count = 0
# p range_arr

# Main
if m == 0 then
  count = 1
elsif m == n then
  count = 0
else
  0.upto(range_arr.length - 1) {|i|
    tmp_div = range_arr[i] / k
    tmp_div = tmp_div + 1 if range_arr[i] % k != 0
    count += tmp_div
  }
end
# p range_arr
print ("#{count}\n")