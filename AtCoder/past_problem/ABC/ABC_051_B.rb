#set
k,s = gets.chomp.split(" ").map(&:to_i)
x = 0
y = 0
z = 0
count = 0

#main
if k <= s then
  0.upto(k) do |i|
    x = i
    0.upto(k) do |j|
      y = j
      z = s - (x + y)
      if z < 0 || z > k then
        next
      else
        count += 1
      end
    end
  end
else
  0.upto(s) do |i|
    x = i
    0.upto(s) do |j|
      y = j
      z = s - (x + y)
      if z < 0 || z > k then
        next
      else
        count += 1
      end
    end
  end
end

print ("#{count}\n")