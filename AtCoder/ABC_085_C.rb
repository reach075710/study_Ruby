#set
n,y = gets.chomp.split(" ").map(&:to_i)
yukichi = 0
higuchi = 0
noguchi = 0

(0 .. n ).each do |yukichi|
    (0 .. n - yukichi).each do |higuchi|
        noguchi = n - yukichi - higuchi
        if noguchi < 0 then
            break
        end
        if y == yukichi * 10000 + higuchi * 5000 + noguchi * 1000 then
            print ("#{yukichi} #{higuchi} #{noguchi}\n")
            exit
        end
    end
end

print ("#{-1} #{-1} #{-1}\n")