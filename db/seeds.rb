puts 'Cleaning database...'
Task.destroy_all
Session.destroy_all

puts 'Create 3 initial tasks...'
Task.create!(name: 'Do yoga', completed: true)
Task.create!(name: 'Meditate', completed: true)
Task.create!(name: 'Build first project')

puts 'Create 1 initial session...'
Session.create!

puts 'Finished'
