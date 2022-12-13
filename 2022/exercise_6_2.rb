input = File.read("#{File.dirname(__FILE__)}/exercise_6.txt")
start_point = 0
end_point = 13

while end_point < input.size
  substring = input[start_point..end_point]
  if substring.chars.uniq.count == substring.length
    puts end_point + 1
    return
  else
    start_point += 1
    end_point += 1
  end
end
