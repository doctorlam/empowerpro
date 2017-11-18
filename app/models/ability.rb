class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
   		can :manage, :all if user.admin?
    if user.role == 'sponsor'
      can :manage, :sponsor_profiles
      can :read, :courses
    else
      can :read, :sponsor_profiles
      can :read, :courses
    end
  end
end
