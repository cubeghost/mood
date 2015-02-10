class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :content
      t.references :user, index: true

      t.timestamps null: false
    end
    add_index :entries, [:user_id, :created_at]
  end
end
