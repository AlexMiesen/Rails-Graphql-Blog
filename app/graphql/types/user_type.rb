class Types::UserType < Types::BaseObject
	description "One User"

	field :id, ID, null: false
	field :first_name, String, null: false
	field :last_name, String, null: false
	field :street, String, null: false
	field :number, Int, null: false
	field :city, String, null: false
	field :postcode, Int, null: false
	field :country, String, null: false
	field :full_name, String, null: true

	def full_name
		"#{object.first_name} #{object.last_name}"
	end 
	
	field :full_address, String, null: true

	def full_address
		"#{object.number} #{object.street}, #{object.postcode}, #{object.city}, #{object.country}"
	end

	# def full_address
	# 	([:street, :number, :postcode, :city, :country].map do |a|
	# 		object.send(a)&.strip
	# 	end.compact - ['']).join(', ')
	# end


	field :posts, [Types::PostType], null: true

	def posts
		Post.all
	end
end