require 'lib/handle_habit_rpg'
require 'icloud'

task_options = { :text => "Just made a new task from add_new_task.rb" }

HandleHabitRPG.add_task(task_options)