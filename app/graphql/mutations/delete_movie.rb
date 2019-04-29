module Mutations
  class Mutations::DeleteMovie < GraphQL::Schema::Mutation

        description "Deleting a Movie"
        argument :id, ID, required: true
        

        field :deleteMovie,Types::MovieType, null:false

    def resolve(id:)
        movie = Movie.find(id)
        movie.destroy
    end
  end
end

