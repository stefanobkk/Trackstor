class Tvshow < ActiveRecord::Base
	belongs_to :user

	has_many :episodes

	has_attached_file :image, styles: { medium: "300x500#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
