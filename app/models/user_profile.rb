class UserProfile < ApplicationRecord
	belongs_to :user
	belongs_to :sponsor_profile
end
