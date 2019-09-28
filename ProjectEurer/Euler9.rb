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
    loop do
        b += 1
        c = Math.sqrt( a ** 2 + b ** 2 )
        
        if c < b then
            break
        end

        if c =~ /^[0-9]+$/ then
            if a + b + c = sum_abc
                break
            end
        end
    end    
end

p a * b * c
