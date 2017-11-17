class AddUserIdToSponsorProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :sponsor_profiles, :user_id, :integer
  end
end
