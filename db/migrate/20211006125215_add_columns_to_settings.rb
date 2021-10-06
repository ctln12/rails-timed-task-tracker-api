class AddColumnsToSettings < ActiveRecord::Migration[6.0]
  def change
    add_column :settings, :duration, :integer
    add_column :settings, :focusing, :boolean, default: true
    add_column :settings, :session_count, :integer, default: 0
  end
end
