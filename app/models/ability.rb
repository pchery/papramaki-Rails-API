class Ability
  include CanCan::Ability

  def initialize(user)
    # TODO: Once you add the other models to the API, add their names in the
    # square brackets, right next to 'Budget'
    can :create, [Budget]
    can [:read, :update, :destroy], [Budget] do |res|
      res.user == user
    end
  end
end
