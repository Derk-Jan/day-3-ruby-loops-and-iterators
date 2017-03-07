friends = [
  {name: 'Jacob', occupation: 'Manager', city: 'Farmsum'},
  {name: 'Jochem', occupation: 'Monsterridder', city: 'Hilversum'},
  {name: 'Ralf', occupation: 'Rentenier', city: 'Pesciante'}
]
friends.each do |friend|
  puts "#{friend[:name]} works as an #{friend[:occupation]} and lives in #{friend[:city]}."
end
