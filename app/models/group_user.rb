class GroupUser < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :group
end
