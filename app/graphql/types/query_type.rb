module Types
  class QueryType < Types::BaseObject
    field :links, resolver: Resolvers::Links
  end
end
