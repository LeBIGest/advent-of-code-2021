#!/usr/bin/env ruby

result = []
f = File.open("data.txt", "r")
f.each_line {|line| result << line.split("\n")[0].to_i }

i, inc, curr = 1, 0, result[0]

while i < result.length do
  inc += 1 if result[i] > curr
  curr = result[i]
  i += 1
end

puts "part 1 : #{inc}"

i, inc, curr = 1, 0, (result[0] + result[1] + result[2])

while i < result.length - 2 do
  inc += 1 if (result[i] + result[i + 1] + result[i + 2] > curr)
  curr = result[i] + result[i + 1] + result[i + 2]
  i += 1
end

puts "part 2 : #{inc}"