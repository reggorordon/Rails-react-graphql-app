module Mutations
  class Mutations::CreateBook < GraphQL::Schema::Mutation
      description "Adding a book"
      argument :title, String, required: true
      argument :description, String, required: true
      field :createBook,Types::BookType, null: false

      def resolve(title:, description:)
        Book.create(title: title, description: description)
        rescue ActiveRecord::RecordInvalid => e
        # this would catch all validation errors and translate them to GraphQL::ExecutionError
        GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
      end
  end
end

