module Types
  class MutationType < Types::BaseObject
  field :deleteMovie, mutation: Mutations::DeleteMovie
  field :createReview, mutation: Mutations::CreateReview
  field :createMovie, mutation: Mutations::CreateMovie
  field :createBook, mutation: Mutations::CreateBook
  field :editMovieTitle, mutation: Mutations::EditMovieTitle
  field :editMovieDescription, mutation: Mutations::EditMovieDescription
  end
end
