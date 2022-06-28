class Types::PostType < Types::BaseObject
	field :id, ID, null: false
	field :body, String, null: false
	field :user_id, Int, null: false
end