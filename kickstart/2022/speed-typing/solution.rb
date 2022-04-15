inputs = ARGF.readlines
number_of_cases = inputs[0].to_i
case_number = 0
words = []

def solve(case_number, input)
    original, output = input
    
    pointer1 = 0
    pointer2 = 0
    word_to_delete = 0
    
    while pointer1 < original.length && pointer2 < output.length
        if original[pointer1] == output[pointer2]
            pointer1 += 1
        else
            word_to_delete += 1
        end
        pointer2 += 1
    end
    
    if pointer1 < original.length
        answer = 'IMPOSSIBLE'
    else
        while pointer2 < output.length
            word_to_delete += 1
            pointer2 += 1
        end
        answer = word_to_delete
    end
    
    puts "Case ##{case_number}: #{answer}"
end

inputs[1..-1].each_with_index do |line, index|
    words << line.strip
    if (index + 1 )% 2 == 0
        case_number += 1
        solve(case_number, words)
        words = []
    end
end
