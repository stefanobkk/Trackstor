class Tvshow < ActiveRecord::Base
	belongs_to :user

	has_many :episodes

	validates_presence_of :name, :air_date, :run_time

	#validates Max
	validates_length_of :name, :maximum => 50
	validates_length_of :air_date, :run_time, :maximum => 30 

	#validates Min
	validates_length_of :name, :air_date, :run_time, :minimum => 4

	has_attached_file :image, styles: { medium: "300x500#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
