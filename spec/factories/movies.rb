FactoryGirl.define do
  factory :movie do |f|
  	f.title = "The Martian"
  	f.director = "Martin scorseysy"
  	f.run_time = "192 minutes"
  	f.description = "They went to a mars and it got bad"
  	f.rating = "10.00"
  	
  end
end
