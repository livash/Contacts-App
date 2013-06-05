# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create!(:name => "olena", :email => "o@a.org")
user2 = User.create!(:name => "james", :email => "j@a.org")

contact1 = Contact.create!(:name => "olena", :email => "o@a.org", :user_id => 1)
contact2 = Contact.create!(:name => "olena", :email => "o@a.org", :user_id => 2)
contact3 = Contact.create!(:name => "jane", :email => "c@a.org", :user_id => 1)
contact4 = Contact.create!(:name => "john", :email => "f@a.org", :user_id => 1)
contact5 = Contact.create!(:name => "marsha", :email => "d@a.org", :user_id => 2)

favorite1 = Favorite.create!(:user_id => 1, :contact_id => 1)
favorite2 = Favorite.create!(:user_id => 1, :contact_id => 3)
favorite3 = Favorite.create!(:user_id => 1, :contact_id => 4)

favorite4 = Favorite.create!(:user_id => 2, :contact_id => 1)
favorite5 = Favorite.create!(:user_id => 2, :contact_id => 5)