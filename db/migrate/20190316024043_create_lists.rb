class CreateLists < ActiveRecord::Migration[5.2]
  def self.up
    create_table :lists do |t|
      t.string :title
      t.date :deadline
      t.string :check, :default => "ToDoがありません"

      t.timestamps
    end
  end

  def self.down
    drop_table :lists
  end
end
