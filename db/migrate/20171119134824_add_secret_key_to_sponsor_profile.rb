class AddSecretKeyToSponsorProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :sponsor_profiles, :secret_key, :integer
  end
end
