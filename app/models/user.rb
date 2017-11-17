class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   	has_many :roles
 	 def role?(base_role)
  		ROLES.index(base_role.to_s) <= ROLES.index(role)
	end
 	
 	def has_role?(*role_names)
    	self.roles.where(:name => role_names).present?
  	end

 	ROLES = %w[sponsor user]
 
def role_symbols
      [role.to_sym]
    end
end
