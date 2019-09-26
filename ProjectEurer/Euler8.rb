# n桁の数字の中から連続するm個の数を掛け合わせたもので最も大きい数を求める

#SET
#input_number = ARGV[0]
#min_length = ARGV[1].to_i

input_number = 73167176531330624919225119674426574742355349194934969835203127745063262395783180169848018694788518438586156078911294949545950173795833195285320880551112540698747158523863050715693290963295227443043557668966489504452445231617318564030987111217223831136222989342338030813533627661428280644448664523874930358907296290491560440772390713810515859307960866701724271218839987979087922749219016997208880937766572733300105336788122023542180975125454059475224352584907711670556013604839586446706324415722155397536978179778461740649551492908625693219784686224828397224137565705605749026140797296865241453510047482166370484403199890008895243450658541227588666881164271714799244429282308634656748139191231628245861786645835912456652947654568284891288314260769004224219022671055626321111109370544217506941658960408071984038509624554443629812309878799272442849091888458015616609791913387549920052406368991256071760605886116467109405077541002256983155200055935729725716362695618826704282524836008232575304207529
min_length = 13
i = 0
j = 0
k = 0

progression_arr = Array.new
calc_number_arr = Array.new
arr_number = 0

#MAIN
progression_arr = input_number.to_s.split("0")
arr_number = progression_arr.length
calc_number_length = 0

max_answer = 0
temp_answer = 0

for i in 0..arr_number-1
    if progression_arr[i].length >= min_length then
        calc_number_arr = progression_arr[i].split("")
        calc_number_length = calc_number_arr.length

        for j in 0..calc_number_length-min_length
            temp_answer = 1
            for k in 0+j..min_length+j-1
                temp_answer = temp_answer * calc_number_arr[k].to_i
            end

            if temp_answer >= max_answer then
                max_answer = temp_answer
            end

        end


    end
end

p max_answer