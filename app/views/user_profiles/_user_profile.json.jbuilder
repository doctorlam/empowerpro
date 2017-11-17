json.extract! user_profile, :id, :first_name, :last_name, :sponsor_id, :email, :phone_number, :street, :city, :state, :zip, :contact_time, :credit_assessment, :credit_debt, :credit_score_above, :tos, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
