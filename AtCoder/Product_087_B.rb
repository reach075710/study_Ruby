#set
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i
counter = 0
surplus_500 = 0
surplus_100 = 0
surplus_50 = 0
chk_500 = 0
chk_100 = 0
chk_50 = 0

#main
if a + b + c == 0 || x / 50 == 0 then
    exit
end

for i in 0 .. a 
    if i == 0 then 
        surplus_500 = x
    else
        chk_500 = x / i
        if chk_500 >= 1 then
            surplus_500 = x % i
        else
            surplus_500 = x
        end
    end

    for j in 0 .. b
        if j == 0 then
            surplus_100 = surplus_500
        else
            chk_100 = surplus_500 / 100
            if chk_100 >= 1 then
                surplus_100 = surplus_500 % j
            else
                surplus_100 = surplus_500
            end
        end

        for k in 0 .. c
            if k == 0 then
                surplus_50 = surplus_100
            else
                chk_50 = surplus_100 / 100
                if chk_50 >= 1 then
                    surplus_50 = surplus_100 % k
                else
                    surplus_50 = surplus_100
                end
            end
        end
    end
    if surplus_50 == 0 then
        counter += 1
    end

end

print ("#{counter}\n")