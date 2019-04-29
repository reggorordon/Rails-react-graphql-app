module Types
  class BookType < Types::BaseObject 
    implements Types::TitleItem
    field :id, ID, null:false
    field :title, String,  null: false
    field :description, String, null:false
  end
end
