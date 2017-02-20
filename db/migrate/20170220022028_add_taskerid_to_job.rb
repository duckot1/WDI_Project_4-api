class AddTaskeridToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :tasker_id, :integer
  end
end
