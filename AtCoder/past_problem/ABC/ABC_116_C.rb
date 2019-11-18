#set
n = gets.chomp.to_i
hight_arr = gets.chomp.split(" ").map(&:to_i)
count = 0
zeros = 0

#main
loop do
  break if hight_arr.count(0) == n
  zeros_arr = hight_arr
  zeros = 1
  (n - 1).downto(1) do |i|
    zeros_arr.delete_at(i) if zeros_arr[i] == zeros_arr[i - 1]
    
  end
  zeros_arr.delete_at(0) if zeros_arr[0] == 0
  zeros_arr.delete_at(-1) if zeros_arr[-1] == 0
  zeros += zeros_arr.count(0)

  

  count += zeros
  hight_arr = hight_arr.map{|j| j - 1 if j != 0 }
  0.upto(n - 1) do |k|
    hight_arr[k] = 0 if hight_arr[k].nil?
  end
end

print ("#{count}\n")