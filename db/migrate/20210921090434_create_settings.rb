class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.integer :focus_time
      t.integer :short_break
      t.integer :long_break
      t.integer :number_sessions

      t.timestamps
    end
  end
end
