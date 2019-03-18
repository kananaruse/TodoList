class CreateTasks < ActiveRecord::Migration[5.2]
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.date :due_date, :default => Date.today
      t.date :create_date, :default => Date.today
      t.boolean :done
      t.references :list, index: true

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
