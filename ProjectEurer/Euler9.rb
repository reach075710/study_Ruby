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
        c = sum_abc - a - b
        if c < b then
            break
        end
        
        if c ** 2 == a ** 2 + b ** 2 then
            break
        end
    end

    if c ** 2 == a ** 2 + b ** 2 then
        break
    end
end
p a, b, c
p a * b * c
