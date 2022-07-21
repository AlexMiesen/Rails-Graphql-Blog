module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :user, Types::UserType, null: true do
      argument :id, ID, required: true
    end

    def user(id:) 
      User.find(id)
    end

    field :users, [Types::UserType], null: true do
    end

    def users
      User.all
    end 

    field :post, Types::PostType, null: true do
      argument :id, ID, required: true
    end

    def post(id:) 
      Post.where(id: id).first
    end

    field :comment, Types::CommentType, null: true do 
      argument :id,ID, required: true
    end 

    def comment(id:) 
      Comment.find(id)
    end

  end
end
