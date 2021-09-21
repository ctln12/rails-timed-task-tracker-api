puts 'Cleaning database...'
Task.destroy_all
Setting.destroy_all

puts 'Create 3 initial tasks...'
Task.create!(name: 'Do yoga', completed: true)
Task.create!(name: 'Meditate', completed: true)
Task.create!(name: 'Build first project')

puts 'Create 1 initial setting...'
Setting.create!(focus_time: 25, short_break: 5, long_break: 15, number_sessions: 4)

puts 'Finished'
