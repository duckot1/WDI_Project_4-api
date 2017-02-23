class AddStatusToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :status, :integer, default: 0
  end
end
