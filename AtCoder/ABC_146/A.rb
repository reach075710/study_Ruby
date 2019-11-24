#set
s = gets.chomp
week_arr = ['SAT','FRI','THU','WED','TUE','MON','SUN']

0.upto(6) do |i|
print ("#{i + 1}\n") if week_arr[i] == s
end