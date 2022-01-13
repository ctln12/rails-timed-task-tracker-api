class ChangeDefaultValueOfPomodorosInTasks < ActiveRecord::Migration[6.0]
  def change
    change_column_default :tasks, :pomodoros, from: 0, to: 1
  end
end
