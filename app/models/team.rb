class Team < ApplicationRecord
  has_many :users_teams
  has_many :teamprojects
  
  validates :teamname, presence: true, length: { in: 2 .. 20 }

	


  # validates_presence_of :body, :title
  # has_many :users_teams, :dependent => :delete_all
end
