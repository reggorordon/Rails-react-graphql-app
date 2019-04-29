module Types
  class ReviewType < Types::BaseObject
    field :id, ID, null:false
    field :content, String, null:false
    field :movie, MovieType, null:false
  end
end
