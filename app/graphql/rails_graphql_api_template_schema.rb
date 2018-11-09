class RailsGraphqlApiTemplateSchema < GraphQL::Schema
  # mutation needs to be commented out to prevent graphiql failing to run once queries are added. 
  # once you have created a mutation you can uncomment it 
 # mutation(Types::MutationType)
  query(Types::QueryType)
end
