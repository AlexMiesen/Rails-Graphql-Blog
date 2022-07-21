module Types
  class MutationType < Types::BaseObject
    
    field :create_user, Types::UserType, mutation: Mutations::CreateUser
    field :create_post, Types::PostType, mutation: Mutations::CreatePost

  end
end
