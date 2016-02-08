class Song < ActiveRecord::Base
	belongs_to :artist, dependent: :destroy
	
	def must_have_video
		unless video.include("<iframe")
			errors.add(:video, "Must have an iframe tag")
			end
	end
end
