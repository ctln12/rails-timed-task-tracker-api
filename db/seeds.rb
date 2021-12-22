puts 'Cleaning database...'
Task.destroy_all
Session.destroy_all

puts 'Create 3 initial tasks with 1 default session each...'
Task.create! name: 'Do yoga', done: true
Task.create! name: 'Meditate'
Task.create! name: 'Build first project'

puts 'Finished'
