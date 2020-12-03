#set
n = gets.chomp.to_i
answer = 'No'

#main
(1 .. 9).each do |i|
  (1 .. 9).each do |j|
    if i * j == n then
      answer = 'Yes'
      print ("#{answer}\n")
      exit
    end
  end
end

print ("#{answer}\n")