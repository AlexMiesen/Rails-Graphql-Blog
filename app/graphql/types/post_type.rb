class Types::PostType < Types::BaseObject
	field :id, ID, null: false
	field :body, String, null: false
	field :user_id, Int, null: false

	field :comments, [Types::CommentType], null: true
end

class Types::PostInputType < GraphQL::Schema::InputObject
	graphql_name "PostInputType"
	description 'create a post for a user'

	argument :user_id, Int, required: true
	argument :body, String, required: true 



end