#set
x,y = gets.chomp.split(" ").map(&:to_i)
answer = 0
y_flug = 1
y_arr = []

#main
if x.odd? then
  y_kosu = (x + 1) /2
  y_start = y_kosu + 1
  0.upto((y_kosu - 1)) do |i|
    y_flug = 0 if y == y_start + i * 2
  end

  if y_flug == 1 then
    answer = 0
    print ("#{answer}\n")
    exit
  end
else
  y_kosu = x / 2 + 1
  y_start = x / 2 
  0.upto((y_kosu - 1)) do |i|
    y_flug = 0 if y == y_start + i * 2
  end
  
  if y_flug == 1 then
    answer = 0
    print ("#{answer}\n")
    exit
  end
end