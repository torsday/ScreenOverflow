FactoryGirl.define do
	factory :post do |f|
		title "I'm a Title"
		video_url "http://gifb.in/CJBV"
		content "Here is a doggy video"
		user
	end
end
