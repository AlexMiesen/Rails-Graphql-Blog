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


	field :errors, [Types::ErrorType], null: true

	def errors
		object.errors.map { |e| {field_name: e, errors: object.errors[e] }}
	end 

	field :posts, [Types::PostType], null: true

	def posts
		Post.all
	end
end

class Types::UserInputType < GraphQL::Schema::InputObject
	graphql_name "UserInputType"
	description 'All attributes needed to create/update a user'

	argument :id, ID, required: false # this one is needed for updating
	argument :first_name, String, required: false
	argument :last_name, String, required: false
	argument :street, String, required: false
	argument :number, Int, required: false
	argument :city, String, required: false
	argument :postcode, Int, required: false
	argument :country, String, required: false
end 