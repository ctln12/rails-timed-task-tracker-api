puts 'Cleaning database...'
Task.destroy_all
Session.destroy_all

puts 'Create 3 initial tasks...'
yoga = Task.create! name: 'Do yoga', done: true
meditation = Task.create! name: 'Meditate'
project = Task.create! name: 'Build first project'

puts 'Create 1 initial session...'
Session.create! task: yoga
Session.create! task: meditation
Session.create! task: project

puts 'Finished'
