# set
h = gets.chomp.to_i
chk_binary = 1
chk_multiplier = 0 
attack_count = 0

# main
loop do
  break if h < chk_binary
  chk_multiplier += 1
  chk_binary *= 2
end

0.upto(chk_multiplier - 1) do |i|
  attack_count += 2 ** i
end

print ("#{attack_count}\n")