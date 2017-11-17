class AddLogoToSponsorProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :sponsor_profiles, :logo, :string
  end
end
