class Team < ApplicationRecord
  has_many :users_teams
  has_many :teamprojects
end
