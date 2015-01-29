class Topic < ActiveRecord::Base
  has_many :topic_votes
  has_many :topic_speakers
  has_and_belongs_to_many :meetups
end
