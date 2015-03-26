# Create/authenticate user from omniauth hash
class User::Auther
  attr_accessor :auth_hash

  def initialize(auth_hash)
    self.auth_hash = auth_hash
  end

  def auth_key
    "#{auth_hash["provider"]}:#{auth_hash["uid"]}"
  end

  def find_or_init_user
    User.find_or_initialize_by(auth_key: auth_key)
  end
end
