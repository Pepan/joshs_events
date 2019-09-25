class User < ApplicationRecord
  has_many :group_users, dependent: :nullify
  has_many :event_votes, dependent: :nullify
end
