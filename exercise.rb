counter = 0
loop do
  counter = counter + 2
  if counter == 4
   next        # skip rest of the code in this iteration
 end
    puts "#{counter}"
    if counter == 10
    break
  end
end
