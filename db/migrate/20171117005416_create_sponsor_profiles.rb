class CreateSponsorProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsor_profiles do |t|
      t.text :first_name
      t.text :last_name
      t.text :organization_name
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :zip
      t.integer :employee_count
      t.string :contact_time
      t.boolean :tos

      t.timestamps
    end
  end
end
