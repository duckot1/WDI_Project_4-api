class AddApplicantidToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :applicant_id, :integer
  end
end
