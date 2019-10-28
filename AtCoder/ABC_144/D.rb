#set
include Math
a,b,x = gets.chomp.split(" ").map(&:to_f)
s = (x / a)
limit = ((a * b) / 2)


#main
if s <= limit then
  h = ((2 * s) / b)
  rad = Math.atan2(b ,h) 
else
  h = (2 * (a * b - s) / a)
  rad = Math.atan2(h, a)
end
answer = rad * 180 / PI

print ("#{answer}\n")