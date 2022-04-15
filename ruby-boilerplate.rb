inputs = ARGF.readlines
number_of_cases = inputs[0].to_i
case_number = 0

def solve(case_number, input)

    puts "Case ##{case_number}: #{answer}"
end

inputs[1..-1].each_with_index do |line, index|
  case_number += 1
  solve(case_number, line)

  # strip last character
  # line.strip
  # every second line
  # if (index + 1) % 2 == 0
  # end
end
