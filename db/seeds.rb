

         User.create!(:email => "admin@zvh.edu", 
         			  :password =>"password", 
         			  :created_at => 2.days.ago,
                      :last_sign_in_at => 1.day.ago,
                      :updated_at => 5.hours.ago).make_admin
 
   	13.times do |n|
		

		 email = Faker::Internet.email
		 password = "password"
         User.create!(:email => email, 
         			  :password => password, 
         			  :created_at => 2.days.ago,
                      :last_sign_in_at => 1.day.ago,
                      :updated_at => 5.hours.ago)
	end