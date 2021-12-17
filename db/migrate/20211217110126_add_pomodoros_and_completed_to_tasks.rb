class AddPomodorosAndCompletedToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :pomodoros, :integer, default: 0
    add_column :tasks, :completed, :integer, default: 0
  end
end
