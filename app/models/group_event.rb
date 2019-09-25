class GroupEvent < ApplicationRecord
  belongs_to :event, optional: true
  belongs_to :group
end
