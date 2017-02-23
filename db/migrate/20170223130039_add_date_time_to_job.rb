class AddDateTimeToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :datetime, :datetime
  end
end
