module Mutations
  class Mutations::EditMovieDescription < GraphQL::Schema::Mutation

        description "Editing a Movie Description"
        argument :id, ID, required: true
        argument :description, String, required:false

        field :editMovieDescription,Types::MovieType, null:false

    def resolve(id:, description:)
        movie = Movie.find(id)
        movie.update(description: description)
        movie.save
    end
  end
end

