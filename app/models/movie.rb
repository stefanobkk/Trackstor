class Movie < ActiveRecord::Base
	#searchkick
	belongs_to :user

	has_attached_file :image, styles: { medium: "300x500#" }
	validates_presence_of :title, :director, :run_time, :description, :rating, :genre
	
	validates_length_of :title, :director, :run_time, :rating, :genre, :maximum => 50
	validates_length_of :description, :maximum => 200

	validates_length_of :title, :director, :run_time, :rating, :genre, :minimum => 4
	validates_length_of :description, :minimum =>10
	
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
