class Types::CommentType < Types::BaseObject
	field :id, ID, null: false
	field :body, String, null: false
	field :post_id, Int, null: false
end

class Types::CommentInputType < GraphQL::Schema::InputObject
	graphql_name "CommentInputType"
	description 'create a comment for a post'

	argument :post_id, Int, required: true
	argument :body, String, required: true
end 