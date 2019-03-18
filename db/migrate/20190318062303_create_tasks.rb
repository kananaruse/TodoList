class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :due_date, :default => Date.today
      t.date :create_date, :default => Date.today
      t.boolean :done

      t.timestamps
    end
  end
end
