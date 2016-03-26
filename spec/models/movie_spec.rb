require 'rails_helper'

RSpec.describe Movie, type: :model do

	before(:each) do 
		@movie = Movie.create!(title: "The Martian", director: "Any something", run_time: "123 minutes", description: "they go to mars bad idea", rating: "10.0", genre: "Sci-Fi")

	end

	describe "creation" do 
		it "should have one title created after being created" do 
			expect(Movie.all.count).to eq(1)
		end
	end

	#This is to check that each of the input fields inside -- New Movie -- 
	describe "validations" do 
		it "should not let movie be created without title" do
			@movie.title = nil
			expect(@movie).to_not be_valid
		end

		it "should not let movie be created without director" do
			@movie.director = nil
			expect(@movie).to_not be_valid
		end

		it "should not let movie be created without run time " do
			@movie.run_time = nil
			expect(@movie).to_not be_valid
		end

		it "should not let movie be created without description" do
			@movie.description = nil
			expect(@movie).to_not be_valid
		end

		it "should not let movie be created without rating" do
			@movie.rating = nil
			expect(@movie).to_not be_valid
		end

		it "should not let movie be created without genre" do
			@movie.genre = nil
			expect(@movie).to_not be_valid
		end
	end

	#Check Max Length
	describe "length validations maximum" do 
		it "it should not allow title longer than 50 character" do
			@movie.title = "M"*53
			expect(@movie).to_not be_valid
		end

		it "it should not allow director longer than 50 character" do
			@movie.director = "M"*53
			expect(@movie).to_not be_valid
		end

		it "run time should not allow more than 50 character" do
			@movie.run_time = "M"*53
			expect(@movie).to_not be_valid
		end

		it "rating should not allow more than 30 character" do
			@movie.rating = "M"*53
			expect(@movie).to_not be_valid
		end

		it "genre should not allow more than 30 character" do
			@movie.genre = "M"*53
			expect(@movie).to_not be_valid
		end

		it "description should not allow more than 200 character" do
			@movie.description = "M"*202
			expect(@movie).to_not be_valid
		end
	end

	#Validates Minimum
	describe "lenfth validation minumum" do
		it "should not allow title shorter than 4 character" do 
			@movie.title = "M"*2
			expect(@movie).to_not be_valid
		end

		it "should not allow director shorter than 4 character" do 
			@movie.director = "M"*2
			expect(@movie).to_not be_valid
		end

		it "should not allow run time shorter than 4 character" do 
			@movie.run_time = "M"*2
			expect(@movie).to_not be_valid
		end

		it "should not allow description shorter than 10 character" do 
			@movie.description = "M"*8
			expect(@movie).to_not be_valid
		end

		it "should not allow rating shorter than 4 character" do 
			@movie.rating = "M"*2
			expect(@movie).to_not be_valid
		end

		it "should not allow genre shorter than 4 character" do 
			@movie.genre = "M"*2
			expect(@movie).to_not be_valid
		end
	end
end