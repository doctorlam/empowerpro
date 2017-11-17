json.extract! sponsor_profile, :id, :first_name, :last_name, :organization_name, :phone_number, :street, :city, :zip, :employee_count, :contact_time, :tos, :created_at, :updated_at
json.url sponsor_profile_url(sponsor_profile, format: :json)
