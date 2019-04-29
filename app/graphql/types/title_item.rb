module Types::TitleItem
    include Types::BaseInterface
    description "name and description of product"
    field :title, String, null: false
    field :description, String, null:false
end