
loop do
print "Got all ingredients you need? Please anwer Yes or No¨

answer = gets.chomp.upcase
puts "#{answer}"
if answer == "YES"
  break
end
end
