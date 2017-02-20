class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :postcode
      t.time :time
      t.date :date
      t.integer :owner_id

      t.timestamps
    end
  end
end
