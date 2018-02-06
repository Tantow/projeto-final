class Project < ApplicationRecord
    validates :name, presence: true, length: { in: 2 .. 50 }
	validates :deadline, presence: true
	validates :pmo, presence: true, length: { in: 2 .. 100 }
	validates :manager, presence: true, length: { in: 5 .. 100 }
	validates :description, presence: true, length: { in: 2 .. 250 }
	
	


end
