class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role == 'sponsor'
      can :manage, :sponsor_profiles
    else
      can :read, :sponsor_profiles
    end
  end
end
