class Course < ApplicationRecord
	has_many :lessons, dependent: :destroy
accepts_nested_attributes_for :lessons, allow_destroy: true
end
