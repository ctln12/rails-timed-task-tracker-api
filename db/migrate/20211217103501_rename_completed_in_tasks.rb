class RenameCompletedInTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :completed, :done
  end
end
