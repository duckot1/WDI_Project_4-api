class RemoveDateFromTableJob < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :date, :date
  end
end
