class EpisodesController < ApplicationController
	before_action :find_tvshow
	before_action :find_episode, only: [:show]

	def new 
		@episode = @tvshow.episodes.new

	end

	def create
		@episode = @tvshow.episodes.new episode_params
		if @episode.save
			redirect_to tvshow_episode_path(@tvshow, @episode)
			#This is because we need the tvshow :id and episode :id as its nested route
		else
			render 'new'
		end
	end

	def show
		@episodes = Episode.where(tvshow_id: @tvshow).order("created_at DESC")
		
	end

	private

	def episode_params
		params.require(:episode).permit(:title, :description, :episode_num,
			:season_num, :air_date, :rating)
	end

	def find_tvshow
		@tvshow = Tvshow.find(params[:tvshow_id])
	end

	def find_episode
		@episode = Episode.find(params[:id])
	end
end