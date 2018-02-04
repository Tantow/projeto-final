class UserTeam < ApplicationRecord
  belongs_to :user
  belongs_to :team
  
  # belongs_to :team
  # validates_presence_of :body # I added this
end
