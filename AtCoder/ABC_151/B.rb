# set
n,k,m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)
sum = 0
0.upto(n - 1) do |i|
  sum += a_arr[i].to_i
end
answer = n * m - sum

# main
if answer > k then
  print ("-1\n")
elsif answer <= 0 then
  print ("0\n")
else
  print ("#{answer}\n")
end