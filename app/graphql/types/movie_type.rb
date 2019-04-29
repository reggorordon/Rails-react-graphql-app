module Types
  class MovieType < Types::BaseObject
   implements Types::TitleItem
    field :id, ID, null:false
    field :title, String, null: false
    field :description, String, null:false
    field :reviews, [ReviewType], null:true
  end
end
