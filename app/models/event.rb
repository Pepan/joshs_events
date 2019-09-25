class Event < ApplicationRecord
  has_many :group_events, dependent: :nullify
  has_many :event_votes, dependent: :destroy
end
