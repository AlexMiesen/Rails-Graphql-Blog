class Types::UserType < Types::BaseObject
	description "One User"
	
	field :id, ID, null: false
	field :first_name, String, null: false
	field :last_name, String, null: false
end