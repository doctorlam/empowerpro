class SponsorProfile < ApplicationRecord
	belongs_to :user
	has_many :user_profiles
	  mount_uploader :logo, LogoUploader

end
