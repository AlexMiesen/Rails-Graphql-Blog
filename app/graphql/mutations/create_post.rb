class Mutations::CreatePost < GraphQL::Schema::Mutation
	
	null false 

	argument :post, Types::PostInputType, required: true

	def resolve(post:)
		Post.create post.to_h
	end 
end 