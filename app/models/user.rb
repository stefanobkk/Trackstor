class User < ActiveRecord::Base
	has_many :movies
	has_many :tvshows

	validates_presence_of :email, :password, :password_confirmation
  validates_length_of :email, :password, :password_confirmation, :minimum => 4
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
