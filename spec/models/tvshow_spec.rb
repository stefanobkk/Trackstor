require 'rails_helper'

RSpec.describe Tvshow, type: :model do

  before(:each) do
    @tvshow = Tvshow.create!(name: "Rick & Morty", air_date: "12/03/2014", run_time: "22 minutes")
    @tvshow2 = Tvshow.create!(name: "Rick & Morty", air_date: "22/03/2014", run_time: "20 minutes")
  end

  describe "creation" do 
  	it "should have one title created after being created " do
  		expect(Tvshow.all.count).to eq(1)
  	end
  end

  #Check if user has filled in every field. 
  describe "validations" do 
  	it "should not let tvshow be created without title" do
  		@tvshow.name = nil
  		expect(@tvshow).to_not be_valid
  	end

  	it "should not let tvshow be created without air date" do
  		@tvshow.air_date = nil
  		expect(@tvshow).to_not be_valid
  	end

  	it "should not let tvshow be created without runt time" do
  		@tvshow.run_time = nil
  		expect(@tvshow).to_not be_valid
  	end
  end

  #Max Length
  describe "length validations maximum" do 
  	it "it should not allow name longer than 50 character" do 
  		@tvshow.name = "k"*53
  		expect(@tvshow).to_not be_valid
  	end

  	it "it should not allow air date longer than 50 char" do 
  		@tvshow.air_date = "k"*53
  		expect(@tvshow).to_not be_valid
  	end
  	it "it should not allow run time longer than 50 char" do 
  		@tvshow.run_time = "k"*53
  		expect(@tvshow).to_not be_valid
  	end
  end

  #Min Length
  describe "length validations min" do 
  	it "it should not allow name shorter than 4" do
  		@tvshow.name = "k"*2
  		expect(@tvshow).to_not be_valid
  	end

  	it "it should not allow air date shorter than 4" do
  		@tvshow.air_date = "k"*2
  		expect(@tvshow).to_not be_valid
  	end

  	it "it should not allow run time shorter than 4" do
  		@tvshow.run_time = "k"*2
  		expect(@tvshow).to_not be_valid
  	end
  end

  describe "uniqueness" do
    it "name has to be unique" do
      { should validate_uniqueness_of @tvshow.name}
    end
end
