module Types
  class MutationType < Types::BaseObject
    
    field :create_user, Types::UserType, mutation: Mutations::CreateUser
    field :create_post, Types::PostType, mutation: Mutations::CreatePost
    field :create_comment, Types::CommentType, mutation: Mutations::CreateComment

    field :update_user, Boolean, null: true, description: "Update a user" do 
      argument :user, Types::UserInputType, required: true
    end 

    def update_user(user:)
      exisiting = User.find(user[:id])
      exisiting&.update user.to_h
    end

    field :delete_user, Boolean, null: true, description: "Delete a user" do
      argument :id, ID, required: true
    end

    def delete_user(id:)
      User.find(id).destroy
      true
    end

    field :update_post, Boolean, null: true, description: "Update a post" do 
      argument :post, Types::PostInputType, required: true 
    end


    def update_post(post:)
      exisiting = Post.find(post[:id])
      exisiting&.update post.to_h
    end

    field :delete_post, Boolean, null: true, description: "Delete a comment" do
      argument :id, ID, required: true
    end 
    
    def delete_post(id:)
      Post.find(id).destroy
      true
    end 

    field :update_comment, Boolean, null: true, description: "Update a comment" do
      argument :comment, Types::CommentInputType, required: true
    end

    def update_comment(comment:)
      exisiting = Comment.find(comment[:id])
      exisiting&.update comment.to_h 
    end

  end
end
