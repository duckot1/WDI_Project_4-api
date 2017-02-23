class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :message
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.float :rating

      t.timestamps
    end
  end
end
