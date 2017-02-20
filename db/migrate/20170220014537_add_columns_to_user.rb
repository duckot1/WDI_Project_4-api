class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :mobile, :string
    add_column :users, :postcode, :string
    add_column :users, :image, :string
    add_column :users, :address, :string
    add_column :users, :dob, :date
  end
end
