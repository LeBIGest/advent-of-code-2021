#!/usr/bin/env ruby

values = File.read("./data.txt").split("\n").map{|e| e.split}.map {|e| [e[0], e[1].to_i]}

depth, position, aim = 0, 0, 0

values.each do |elem|
  aim += elem[1] if elem[0] == 'down'
  aim -= elem[1] if elem[0] == 'up'
  if elem[0] == 'forward'
    position += elem[1]   
    depth += aim * elem[1]
  end
end

puts depth * position