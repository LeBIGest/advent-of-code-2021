#!/usr/bin/env ruby

values = File.read("./data.txt").split("\n").map{|e| e.split}.map {|e| [e[0], e[1].to_i]}

depth, position, aim = 0, 0, 0

values.each do |elem|
  instruction, value = *elem
  aim += value if instruction == 'down'
  aim -= value if instruction == 'up'
  if instruction == 'forward'
    position += value  
    depth += aim * value
  end
end

puts depth * position
