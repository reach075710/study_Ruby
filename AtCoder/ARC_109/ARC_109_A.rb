# Set
a,b,x,y = gets.chomp.split(" ").map(&:to_i)
time = 0

# Main
if a <= b then
  if x * 2 < y then
    time = x * ((b - a) * 2 + 1 )
  else
    time = x + (b - a) * y
  end
else
  if x * 2 < y then
    time = x * ((a - b) * 2  - 1)
  else
    time = x + (a - b - 1) * y
  end
end

print ("#{time}\n")