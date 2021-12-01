class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.boolean :completed, null: false, default: false
      t.jsonb :settings
      t.references :task, null: true, foreign_key: true

      t.timestamps
    end
  end
end
