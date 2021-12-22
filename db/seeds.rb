puts 'Cleaning database...'
Task.destroy_all
Session.destroy_all

puts 'Create 3 initial tasks with 1 default session each...'
yoga = Task.create! name: 'Do yoga', done: true
meditation = Task.create! name: 'Meditate'
project = Task.create! name: 'Build first project'

puts "Updating each task's pomodoros"
yoga_sessions = Session.where(task: yoga).count
yoga.update! pomodoros: yoga_sessions, completed: yoga.done ? yoga_sessions : 0
meditation_sessions = Session.where(task: meditation).count
meditation.update! pomodoros: meditation_sessions, completed: meditation.done ? meditation_sessions : 0
project_sessions = Session.where(task: project).count
project.update! pomodoros: project_sessions, completed: project.done ? project_sessions : 0

puts 'Finished'
