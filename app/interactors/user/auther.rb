# Create/authenticate user from omniauth hash
class User::Auther
  attr_accessor :user

  def initialize(user)
    self.user = user
  end
end
