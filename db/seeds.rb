# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#-----CITY-----------

10.times do |index|
	city = City.create!(name:Faker::LordOfTheRings.location, zip_code:Faker::Address.zip)

end

#-----USER-----------

10.times do |index|

	city = City.all.sample

	user = User.new 
	user.first_name = Faker::LordOfTheRings.character
	user.last_name = Faker::Pokemon.name
	user.description = Faker::Lorem.paragraph
	user.email = Faker::Internet.email
	user.age = rand(12..70)
	user.city = city
	user.save

end





#-----GOSSIP-----------

20.times do |index|

	user = User.all.sample
	gossip = Gossip.new 
	gossip.title = Faker::LordOfTheRings.character
	gossip.content = Faker::Lorem.sentence
	gossip.user = user
	gossip.save

end


#-----TAG-----------

10.times do |index|
	tag = Tag.create!(title: Faker::Pokemon.name)

end


#-----POST-----------

100.times do |index|

	tag = Tag.all.sample
	gossip = Gossip.all.sample

	post = Post.new 
	post.tag = tag
	post.gossip = gossip
	post.save

end

#-----PRIVATEMESSAGE-----------

20.times do |index|

	sender = User.all.sample
	recipient = User.all.sample

	private_message = PrivateMessage.new
	private_message.content = Faker::Lorem.paragraph
	private_message.sender = sender
	private_message.recipient = recipient

	private_message.save

end

