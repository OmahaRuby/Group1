require 'rails_helper'

describe User::Auther do
  let(:auth_hash) do
    {
      "provider" => "meetup",
      "uid" => 123456,
      "info" => {
        "name" => "Carl Zulauf"
      }
    }
  end
  let(:auth_key) { "meetup:123456" }

  subject { User::Auther.new(auth_hash) }

  it "should contain the auth_hash" do
    expect(subject.auth_hash).to eq(auth_hash)
  end

  describe "#auth_key" do
    it "should compute an auth key based on the provider and uid" do
      expect(subject.auth_key).to eq(auth_key)
    end
  end

  describe "#find_or_create_user" do
    it "should return a user with the auth key" do
      expect(subject.find_or_init_user.auth_key).to eq(auth_key)
    end
  end
end
