# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  concerts = [
	 Concert.new(artist:"Shakira", venue: "AAA", city: "miami" ,date: Time.new(2015, 11, 13, 19, 00), price:165.00 ),
	 Concert.new(artist:"Mana", venue: "AAA", city: "miami" ,date: Time.new(2015, 11, 30, 14, 00), price:145.00 ),
	 Concert.new(artist:"Guns and Roses", venue: "AAA",city: "miami" , date: Time.new(2016 ,01, 30, 18, 00), price:205.50 , description: "The best"),
	 Concert.new(artist:"Shakira", venue: "AAA", city: "miami" ,date: Time.new(2015, 11, 15, 19, 00), price:165.00 )
	 ]	 
concerts.each do |conc|
	conc.save
end