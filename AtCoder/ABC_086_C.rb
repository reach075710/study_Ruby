#set
n = gets.chomp.to_i
t = Array.new
x = Array.new
y = Array.new
now = Array.new
(0 .. n - 1).each do |i|
     plan_arr = gets.chomp.split(" ").map(&:to_i)
     t[i] = plan_arr[0] 
     x[i] = plan_arr[1]
     y[i] = plan_arr[2]
     now[i] = ([x[i],y[i]])
end

#main
