print "Enter number from which you wish the countdown to start with:"
number = gets.chomp.to_i

for i in number.downto(0)
puts "#{i}"
end
