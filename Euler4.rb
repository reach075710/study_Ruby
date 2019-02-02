#回文数について解く

#積の文字列長を確認して、偶数桁と奇数桁で場合わけ

#SET
i = 100
j = 100
answer = 0

#MAIN

for i in 100..999
    for j in 100..999
        answer = i * j
# puts i * j
# check_number_length = (i * j).to_s
# p check_number_length