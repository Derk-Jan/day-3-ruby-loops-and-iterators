tellen = ["een", "twee", "drie", "vier"]

tellen.each_with_index do |tel, index|
  puts "#{index + 1}, #{tel}"
end
