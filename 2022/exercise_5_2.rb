input = File.read("#{File.dirname(__FILE__)}/exercise_5.txt")

stacks_lines, moves = input.split("\n\n")
pre_stasks = []

stacks_lines.split("\n").each do |line|
  pre_stasks << line.chars.each_slice(4).to_a
end
columns = pre_stasks.last.size
stacks = []
pre_stasks.size.times do |i|
  stack = []
  columns.times do |j|
    letters = pre_stasks[j][i]
    stack << letters[1] if letters && (65..90).cover?(letters[1].ord)
  end
  stacks << stack.reverse if stack.any?
end

moves.split("\n").each do |line|
  move, from, to = line.split(/[a-z]/).reject(&:empty?)
  stacks[to.to_i - 1] += stacks[from.to_i - 1].pop(move.to_i)
end

puts stacks.map(&:last).join()
