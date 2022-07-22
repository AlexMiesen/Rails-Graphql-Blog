class Types::PostType < Types::BaseObject
	field :id, ID, null: false
	field :body, String, null: false
	field :user_id, Int, null: false

	field :comments, [Types::CommentType], null: true


	field :errors, [Types::ErrorType], null: true

	def errors
		object.errors.map { |e| {field_name: e, errors: object.errors[e] }}
	end 
end

class Types::PostInputType < GraphQL::Schema::InputObject
	graphql_name "PostInputType"
	description 'create/update a post for a user'
	
	argument :id, ID, required: false
	argument :user_id, Int, required: false
	argument :body, String, required: false 
end