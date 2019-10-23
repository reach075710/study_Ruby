#set
n = gets.chomp.to_i
x = Array.new
y= Array.new
max_length =

0.upto(n - 1) do |i|
    line = gets.chomp.split(" ").map(&:to_i)
    x[i] = line[0]
    y[i] = line[1]
end

#main
0.upto(n - 1) do |j|
    0.upto(n - 1) do |k|
        now_length = Math.sqrt((x[k] - x[j]).abs ** 2 + (y[k] - y[j]).abs ** 2)
        if now_length >= max_length then
            max_length = now_length
        end
    end
end

print ("#{max_length}\n")