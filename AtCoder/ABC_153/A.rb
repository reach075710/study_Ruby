# set
h,a = gets.chomp.split(" ").map(&:to_i)
count = 0

# main
if h % a == 0 then
  count = h / a
else
  count = h / a + 1
end
print ("#{count}\n")