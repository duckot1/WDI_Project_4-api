class RemoveTimeFromTableJob < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :time, :time
  end
end
