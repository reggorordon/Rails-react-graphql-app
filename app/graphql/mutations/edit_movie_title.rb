module Mutations
  class Mutations::EditMovieTitle < GraphQL::Schema::Mutation

        description "Editing a Movie Title"
        argument :id, ID, required: true
        argument :title, String, required:false
        field :editMovieTitle,Types::MovieType, null:false

    def resolve(id:, title:)
        movie = Movie.find(id)
        movie.update(title: title)
        movie.save
    end
  end
end

