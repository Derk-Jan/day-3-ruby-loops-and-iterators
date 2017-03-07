def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

POUNDS_FLOUR = 2
NUM_EGGS = 12
# TEASPOONS_CINNAMON = 2
LITRES_MILK = 6

#1. Defining the Ingredients

ingredients = [
  { name: 'flour', quantity: POUNDS_FLOUR },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'cinnamon', quantity: 'some' },
  { name: 'salt', quantity: 'some' },
  { name: 'milk', quantity: LITRES_MILK }
]

# 2. Printing Out the Ingredients


puts "*    Let's cook an Pancake!    *"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "* #{ingredient[:quantity]} #{ingredient[:name]}"
end

# 3. Asking user if he got all ingredients

loop do
  puts "\n"
  print_divider

  puts "Got all ingredients you need? (Y/N)"
  answer = gets.chomp.upcase

  if answer == 'N'
    puts "Bummer. You need to go to the Albert-Hein"
    print_progress_bar
  elsif answer == 'Y'
    puts "Ready, steady, cook!"
    break
  else
    puts "That's not a valid input. Try again."
  end
end

# 4. Defining the Recipe Steps

steps = [
  { description: "get an huge stirring bowl.I mean HUGE!", action: "generic_recipe_step"},
  { description: "put the flour in the stirring bowl", action: "flour_in_stirring_bowl"},
  { description: "pour the milk in the stirring bowl", action: "pour_milk"},
  { description: "Stir into the bowl the flour with milk and some salt", action: "generic_recipe_step"},
  { description: "Break the eggs", action: "break_eggs"},
  { description: "pour the eggs in the stirring bowl", action: "generic_recipe_step"},
  { description: "Stir the eggs together with the other ingredients", action: "generic_recipe_step"},
  { description: "Heat the oil in a large frying pan", action: "generic_recipe_step"},
  { description: "Cook until the pancake is solid and slightly brown", action: "generic_recipe_step" },
  { description: "flip the pancake in the air and catch it in the pan", action: "crucial_step"},
  {description: "Cook until the bottom side is lightly brown", action: "generic_recipe_step"}
]

#  6. Defining the Steps Actions

def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def flour_in_stirring_bowl
  counter = 0
  while counter < POUNDS_FLOUR
    counter += 1
    print "add an pound of flour"
    print_progress_bar
  end
end

def pour_milk
  counter = 0
  while counter < LITRES_MILK
    counter += 1
    print "add an litre of milk into the stirring bowl"
    print_progress_bar
  end
end

def break_eggs
  counter = 0
  while counter < NUM_EGGS
    counter += 1
    print "break egg #{counter}"
    print_progress_bar
  end
end

def crucial_step
  puts "..........\n
  Lets do something magic"
end

#7. Asking User if Ready for Next Step


def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}?\n(#{step[:description]})"
  answer = gets.chomp

  answer.upcase == 'Y'
end

# 8. Iterating through Each of the Steps

steps.each_with_index do |step, index|
  print_divider

  loop do
    ready = ask_if_ready(step, index)
    break if ready
if step[:description] == "Cook until the bottom side is lightly brown"
    puts "OH NO, \n
    the pancake is on the ground!"

    puts "But no one is noticing. PUT IT BACK!"


elsif
     puts "OK, I will give you some extra time."
    print_progress_bar
  end
  end

  send(step[:action])
end

# 9. Done With Cooking

print_divider
puts "Listo! Enjoy your meal!"
