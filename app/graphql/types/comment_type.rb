class Types::CommentType < Types::BaseObject
	field :id, ID, null: false
	field :body, String, null: false
	field :post_id, Int, null: false


	field :errors, [Types::ErrorType], null: true

	def errors
		object.errors.map { |e| {field_name: e, errors: object.errors[e] }}
	end 
end

class Types::CommentInputType < GraphQL::Schema::InputObject
	graphql_name "CommentInputType"
	description 'create/update a comment for a post'

	argument :id, ID, required: false
	argument :post_id, Int, required: false
	argument :body, String, required: false
end 