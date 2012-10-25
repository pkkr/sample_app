FactoryGirl.define do	
	factory :user do
		name 	 "Phil Becker"
		email 	 "pb@example.com"
		password "foobar"
		password_confirmation "foobar"
	end
end