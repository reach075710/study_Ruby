#ピタゴラス数を求める

#set
a = 0
b = 0
c = 0
sum_abc = 1000
max_a = sum_abc / 3 - 1
min_c = sum_abc / 3 + 1

#main
for a in 1 .. max_a
    b = a
    loop do
        b += 1
        c = Math.sqrt( a ** 2 + b ** 2 )

        if a + b + c >= sum_abc then
            break
        end
    end

    if c =~ /^[0-9]+$/ then
        if a + b + c = sum_abc then
            break
        end
    end    
end
p c
p a * b * c
