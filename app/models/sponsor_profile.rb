class SponsorProfile < ApplicationRecord
	self.primary_key = :secret_key
	belongs_to :user
	has_many :user_profiles
	  mount_uploader :logo, LogoUploader
end
