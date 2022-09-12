class AddFieldToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :name, :string
    add_column :tasks, :description, :string
  end
end
