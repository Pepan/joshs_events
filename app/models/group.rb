class Group < ApplicationRecord
  has_many :group_events, dependent: :destroy
  has_many :group_users, dependent: :destroy

  has_many :users, through: :group_users
  has_many :events, through: :group_events

  has_many :event_votes, through: :events

  class << self

  end
end
