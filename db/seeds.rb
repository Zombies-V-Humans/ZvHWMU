User.create!(:name => "Admin1",
             :email => "zvhwmich@gmail.com", 
         		 :password =>"password", 
         		 :created_at => 2.days.ago,
             :last_sign_in_at => 1.day.ago,
             :updated_at => 5.hours.ago).make_admin

User.create!(:name => "Admin2",
             :email => "zvhwmich2@gmail.com", 
                 :password =>"password", 
                 :created_at => 2.days.ago,
             :last_sign_in_at => 1.day.ago,
             :updated_at => 5.hours.ago).make_admin

User.create!(:name => "Admin3",
             :email => "zvhwmich3@gmail.com", 
                 :password =>"password", 
                 :created_at => 2.days.ago,
             :last_sign_in_at => 1.day.ago,
             :updated_at => 5.hours.ago).make_admin

120.times do |n|
 name = Faker::Name.name 
 email = Faker::Internet.email
 avatar = Faker::Avatar.image( "#{n*2}x#{n*3}")
 password = "password"
User.create!(:name => name,
             :email => email, 
             :avatar => avatar,
                 :password => password, 
                 :created_at => 2.days.ago,
             :last_sign_in_at => 1.day.ago,
             :updated_at => 5.hours.ago)
    end

