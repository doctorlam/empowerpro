class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :sponsor_id
      t.string :email
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :contact_time
      t.boolean :credit_assessment
      t.boolean :credit_debt
      t.boolean :credit_score_above
      t.boolean :tos

      t.timestamps
    end
  end
end
