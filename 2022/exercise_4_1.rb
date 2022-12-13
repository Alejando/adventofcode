lines = File.readlines("#{File.dirname(__FILE__)}/exercise_4.txt")
counter = 0
lines.each do |line|
  a, b = line.split(',')
  section_a_init, section_a_end = a.split('-')
  section_b_init, section_b_end = b.split('-')
  a_covers_b = (section_a_init.to_i..section_a_end.to_i).cover? (section_b_init.to_i..section_b_end.to_i)
  b_covers_a = (section_b_init.to_i..section_b_end.to_i).cover? (section_a_init.to_i..section_a_end.to_i)
  counter += 1 if a_covers_b || b_covers_a
end
puts counter