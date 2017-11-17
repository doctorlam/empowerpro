class SponsorProfile < ApplicationRecord
	belongs_to :user
	has_many :user_profiles
end
