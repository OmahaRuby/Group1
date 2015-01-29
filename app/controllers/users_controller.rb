class UsersController < ApplicationController
  helper_method :auth_hash

  def new

  end

  def callback
    # binding.pry
  end

  def auth_hash
    request.env['omniauth.auth']
  end
end
