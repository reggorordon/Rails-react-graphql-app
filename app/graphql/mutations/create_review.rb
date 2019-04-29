module Mutations
  class Mutations::CreateReview < GraphQL::Schema::Mutation
    description "Adding a Review"
    argument :content, String, required: true
    argument :movie_id, ID, required: true

    field :createReview,Types::ReviewType, null: true 

    def resolve(content:, movie_id:)
        movie = Movie.find(movie_id)
        review =movie.reviews.build(content: content)
        review.save 
    rescue ActiveRecord::RecordInvalid => e
    end
  end
 end
