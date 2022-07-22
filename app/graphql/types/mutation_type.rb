module Types
  class MutationType < Types::BaseObject
    
    field :create_user, Types::UserType, mutation: Mutations::CreateUser
    field :create_post, Types::PostType, mutation: Mutations::CreatePost
    field :create_comment, Types::CommentType, mutation: Mutations::CreateComment

    field :update_user, Boolean, null: true, description: "Update user" do 
      argument :user, Types::UserInputType, required: true
    end 

    def update_user(user:)
      exisiting = User.find(user[:id])
      exisiting&.update user.to_h
    end

    field :update_post, Boolean, null: true, description: "Update post" do 
      argument :post, Types::PostInputType, required: true 
    end

    def update_post(post:)
      exisiting = Post.find(post[:id])
      exisiting&.update post.to_h
    end 

  end
end
