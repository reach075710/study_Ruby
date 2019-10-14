#set
n = gets.chomp.to_i
t = Array.new
x = Array.new
y = Array.new
now = Array.new(2,0)
answer = 'Yes'
t[0] = 0
x[0] = 0
y[0] = 0
(0 .. n - 1).each do |i|
     plan_arr = gets.chomp.split(" ").map(&:to_i)
     t[i + 1] = plan_arr[0] 
     x[i + 1] = plan_arr[1]
     y[i + 1] = plan_arr[2]
     now[i + 1] = ([x[i + 1],y[i + 1]])
end

#main
(0 .. n - 1).each do |j|
    distance = (x[j + 1] - x[j]).abs + (y[j + 1] - y[j]).abs
    time = (t[j + 1] - t[j]).abs
    if distance > time || (time - distance) % 2 == 1 then
        answer ='No'
        break
    end
end

print ("#{answer}\n")