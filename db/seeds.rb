# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	User.create(
		first_name: "John",
		last_name: "Smith",
		street: "George Avenue",
		number: 31,
		city: "Sydney",
		postcode: 2248,
		country: "Australia"
	)

	User.create(
		first_name: "Paul",
		last_name: "Phoenix",
		street: "Ringo Street",
		number: 420,
		city: "Melbourne",
		postcode: 3012,
		country: "Australia"
	)
