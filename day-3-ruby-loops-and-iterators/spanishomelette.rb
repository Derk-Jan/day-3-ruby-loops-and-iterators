def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

POUNDS_FLOUR = 4
NUM_EGGS = 24
# TEASPOONS_CINNAMON = 2
LITRES_MILK = 12

#1. Defining the Ingredients

ingredients = [
  { name: 'flour', quantity: POUNDS_FLOUR },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'cinnamon', quantity: 'some' },
  { name: 'milk', quantity: 'LITRES_MILK' }
]

# 2. Printing Out the Ingredients


puts "*    Let's cook an Pancake!    *"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "* #{ingredient[:quantity]} #{ingredient[:name]}"
end
