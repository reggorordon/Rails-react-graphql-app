module Mutations
  class Mutations::CreateMovie < GraphQL::Schema::Mutation

      description "Adding a Movie"
      argument :title, String, required: true
      argument :description, String, required: true
      field :createMovie,Types::MovieType, null:false

      def resolve(title:, description:)
          movie = Movie.create(title: title, description: description)
          rescue ActiveRecord::RecordInvalid => e
          # this would catch all validation errors and translate them to GraphQL::ExecutionError
          GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
      end
  end
end

