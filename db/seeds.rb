puts 'Cleaning database...'
Task.destroy_all
Session.destroy_all

puts 'Create 3 initial tasks with 1 default session each...'
yoga = Task.create! name: 'Do yoga', done: true
meditation = Task.create! name: 'Meditate'
project = Task.create! name: 'Build first project'

puts 'Finished'
