class UserDirection < ApplicationRecord
  belongs_to :users
  belongs_to :teams
  belongs_to :full_name
end
