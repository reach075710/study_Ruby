# Set
n,m = gets.chomp.split(" ").map(&:to_i)
a_arr = []
b_arr = []
connect_town_arr = []
connect_town_number = 0
answer = 0

0.upto(m - 1) do |i|
  a_arr[i],b_arr[i] = gets.chomp.split(" ").map(&:to_i)
end

# Main
a_arr = a_arr.sort
b_arr = b_arr.sort

connect_town_arr = (a_arr.concat b_arr).sort
connect_town_number = connect_town_arr.uniq.length
answer = n - connect_town_number

print ("#{answer}\n")