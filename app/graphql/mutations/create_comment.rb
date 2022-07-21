class Mutations::CreateComment < GraphQL::Schema::Mutation
	
	null false 

	argument :comment, Types::CommentInputType, required: true

	def resolve(comment:)
		Comment.create comment.to_h
	end 
end 