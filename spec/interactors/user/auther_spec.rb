require 'rails_helper'

describe User::Auther do
  let (:user) { double({}) }

  it "should accept a user" do
    auther = User::Auther.new(user)
    expect(auther.user).to eq(user)
  end
end
