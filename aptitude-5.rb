def permutations()
    if $running.length == $characters.length
        puts($running.join(''))
    else
        for i in 0...$characters.length
            if (($bitmask>>i)&1) == 0
                $bitmask |= 1<<i
                $running << $characters[i]
                permutations()
                $bitmask ^= 1<<i
                $running.pop
            end
        end
    end
end

$characters = gets.chomp.split('')
$running = []
$bitmask = 0
permutations()