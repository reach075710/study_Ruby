#自然数の「２乗の和」と「和の２条」の差を求める

#SET
i = 0
j = 0
k = 0

sum_i = 0
sum_powered = 0
power_sumed = 0

answer = 0

#MAIN
n = 100
for i in 0..n
    sum_powered += (i ** 2)
    sum_i += i
end
power_sumed = sum_i ** 2
if sum_powered >= power_sumed then
    answer = sum_powered - power_sumed
else
    answer = power_sumed - sum_powered
end

p answer