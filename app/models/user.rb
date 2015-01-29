class User < ActiveRecord::Base
  has_many :topic_votes
  has_many :topic_speakers

  has_many :voted_topics, through: :topic_votes, source: :topic
  has_many :speaking_topics, through: :topic_speakers, source: :topic
end
