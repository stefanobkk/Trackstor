class Episode < ActiveRecord::Base
  belongs_to :tvshow

	validates_presence_of :title, :description
  validates_length_of :tile, :maximum => 50
  validates_length_of :description, :maximum => 200

end
