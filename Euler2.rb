i = 1 #n番目
j = 0 #n-1番目
k = 0 #n+2番目
SUM_even_vulued_term = 0

#main
while i <= 4.0 * ( 10 ** 6 ) do
    k = j
    j = i
    i = j + k
    
    if i % 2 == 0 then
        SUM_even_vulued_term += i
    end
end

puts i