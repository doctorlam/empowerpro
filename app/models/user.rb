class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :registerable
    has_one :sponsor_profile
    has_one :user_profile
   	has_many :roles
 	 def role?(base_role)
  		ROLES.index(base_role.to_s) <= ROLES.index(role)
	end
 	
 	def has_role?(*role_names)
    	self.roles.where(:name => role_names).present?
  	end

  ROLES = %w[sponsor user].freeze
 
def role_symbols
      [role.to_sym]
    end
end
