# set
n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i).sort
point_alice = 0
point_bob = 0
answer = 0
flug = 0

# Main
n.times do
  if flug % 2 == 0 then
    point_alice += a_arr.pop
    flug = 1
  else
    point_bob += a_arr.pop
    flug = 0
  end
end

answer = point_alice - point_bob
print ("#{answer}\n")