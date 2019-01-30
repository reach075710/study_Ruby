i = 1 #n番目
j = 0 #n-1番目
k = 0 #n+2番目
l = 0

#main
loop do
    k = j
    j = i
    i = j + k
    if i > 4.0 * ( 10 ** 6 ) then
        break
    end

    if i % 2 == 0 then
            l += i
    end
end

puts l