class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  # Guest user (not logged in)

    can :read, User, id: user.id # Users can read their own User model


    if user.admin?
      can :manage, :all  # Admin can manage everything
      can :remove, User  # Admin can remove users
    else
      can :read, :all   # Non-admin users can read everything
      can :buy, Bike     # Non-admin users can buy bikes

      if user.persisted?
        can :manage, :all # Admins can manage all resources
        can :manage, User, id: user.id  # Users can manage their own accounts
      end
    end
  end
end
