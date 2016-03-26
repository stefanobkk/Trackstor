require 'rails_helper'

RSpec.describe Episode, type: :model do

	before(:each) do 
		@episode = Episode.create!(title: "Pilot", description: "A grandfather and his newphew goes an adventudes across the universe", episode_num: 1, season_num: 1)
	end

	describe "creation" do 
		it "should have one title created after being created" do 
			expect(Episode.all.count).to eq(1)
		end
	end

	describe "validations" do 
		it "should not let episode be created without title" do 
			@episode.title = nil
			expect(@episode).to_not be_valid
		end

		it "should not let episode be created without description" do 
			@episode.description = nil
			expect(@episode).to_not be_valid
		end

		it "should not let episode be created without episdode number" do 
			@episode.episode_num = nil
			expect(@episode).to_not be_valid
		end

		it "should not let episode be created without season number" do 
			@episode.season_num = nil
			expect(@episode).to_not be_valid
		end
	end
end


#To fix this have to include tvshow_id so that we can pass that into tvshow 
	#before we create the episode as we need there to be an tvshow before we can create
	#an episode
