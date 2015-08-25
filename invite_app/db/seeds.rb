# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u = User.create(:name => 'Rupali', :lastname => 'Tanna', :password => "hello", :password_confirmation => "hello", :age => 25, :address => 'akshardham', :state => 'AK', :gender => 'f', :cellno => 5512085858, :email => 'rupali.tanna2007@gmail.com')
p = Photogallery.create(:event_id => 1, :topic => 'Picnin Fun', :pics => 'http://www.cartoonsgames.net/files/image/holly_hobbie_picnic.gif', :details => 'Had a blast in the state park picnic.')
e = Event.create(:nameevent => 'Picnic', :picsevent => 'http://miamishores.com/wp-content/uploads/2012/06/arts5-picnic.jpg', :details => 'Join us', :location => '2668 E. 873rd Rd., Oglesby, IL 61348')
g = Guest.create(:name => 'Rupali', :middlename => 'J', :lastname => 'Tanna', :age => 24, :address => 'Norwich', :state => 'NY', :gender => 'F', :cellno => '5512085858', :email => 'rupali.tanna2007@gmail.com', :zipcode => 13815)
r = Rsvp.create(:user_id => 1, :event_id => 1, :coming => true, :name => 'Clone', :middlename => 'C', :lastname => 'Clone', :address => 'Clifton', :state => 'NJ', :zipcode => '12314', :cellno => '5512088802', :email => 'jitendra2484@gmail.com' )