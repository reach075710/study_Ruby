#set
x,y = gets.chomp.split(" ").map(&:to_i)
answer = 1
n = (2 * x - y) / 3
m = (2 * y - x) / 3

bunbo = 1
bunshi = 1
value_bunshi = n + m
value_bunbo = n

#main
if (x + y) % 3 != 0 then
  answer = 0
  print ("#{answer}\n")
  exit
else
  n.times do |i|
    bunshi = (bunshi * value_bunshi) % ((10 ** 9) + 7)
    bunbo = (bunbo * value_bunbo) % ((10 ** 9) + 7)
    value_bunshi -= 1
    value_bunbo -= 1
  end
end
answer = bunshi * bunbo
p bunshi
p bunbo
print ("#{answer}\n")
