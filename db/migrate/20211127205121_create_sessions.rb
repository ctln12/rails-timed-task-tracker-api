class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.boolean :completed, null: false, default: false
      t.json :settings
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
