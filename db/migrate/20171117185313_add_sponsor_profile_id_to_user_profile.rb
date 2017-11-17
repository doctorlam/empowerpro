class AddSponsorProfileIdToUserProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :user_profiles, :sponsor_profile_id, :integer
  end
end
