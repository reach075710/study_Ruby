# Set
l = gets.chomp.to_i
maximum_volume = 0

# Main
if l % 3 == 0 then
  maximum_volume = (l / 3) ** 3
else
  l = l.to_f
  l1 = (l / 3).round(15)
  l2 = l - (l1 * 2)
  maximum_volume = (l1 ** 2) * l2
end

print ("#{maximum_volume}\n")