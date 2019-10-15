#set 
h,w = gets.chomp.split(" ").map(&:to_i)

line = Array.new(h)
squeares = Array.new(h) {Array.new(w, 0)}
answers = Array.new(h) {Array.new(w, 0)}

(0 .. h - 1).each do |i|
    line[i] = gets.chomp
    (0 .. w - 1).each do |j|
        squeares[i][j] = line[i].split("")[j]
    end
end

#main
(0 .. h - 1).each do |i|
    (0 .. w - 1).each do |j|
        if squeares[i][j] == '#' then
            answers[i][j] = squeares[i][j]
            (i - 1 .. i + 1).each do |k|
                (j - 1 .. j + 1).each do |l|
                    if k >= 0 && k < h && l >= 0 && l < w then
                        if k == i && l == j then
                            next
                        else
                            if answers[k][l] != '#' then
                                answers[k][l] = (answers[k][l].to_i + 1).to_s
                            end
                        end
                    end
                end
            end
        end
    end
end

(0 .. h - 1).each do |i|
    print ("#{answers[i].join}\n")
end