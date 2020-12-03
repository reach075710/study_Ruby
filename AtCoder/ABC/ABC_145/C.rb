#set
n = gets.chomp.to_i
x_arr = []
y_arr = []
0.upto(n - 1) do |i|
  x_arr[i],y_arr[i] = gets.chomp.split(" ").map(&:to_i)
end

length_sum = 0
answer = 0

#main
0.upto(n - 1) do |i|
  0.upto(n - 1) do |j|
    length_sum += Math.sqrt(((x_arr[i] - x_arr[j]) ** 2) + ((y_arr[i] - y_arr[j]) ** 2))
  end
end

answer = length_sum / n
print ("#{answer}\n")
