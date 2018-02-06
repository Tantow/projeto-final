class Task < ApplicationRecord
    before_create :set_confirmation_default
    before_create :set_done_default
  belongs_to :goal, optional: true
	validates :title, presence: true, length: { in: 2 .. 100 }
	validates :content, presence: true, length: { in: 5 .. 500 }



    private
		def set_confirmation_default
			self.confirmation = false
		end


        def set_done_default
			self.done = false
		end




end
