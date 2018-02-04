class Team < ApplicationRecord
  has_many :users_teams
  
  # validates_presence_of :body, :title
  # has_many :users_teams, :dependent => :delete_all
end
