class CreateShortsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :shorts do |t|
      t.text :url, null: false
      t.string :unique_key, limit: 10, null: false
      t.timestamps
    end
    add_index :shorts, :unique_key, unique: true
    add_index :shorts, :url
  end
end
