class AddDetailsToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :due_date, :date
    add_column :tasks, :done, :boolean
  end
end
