module Mutations
  class DeleteLink < BaseMutation

    argument :id, ID, required: true

    # return type from the mutation
    type Types::LinkType

    def resolve(id:)
      Link.find(id).destroy
    rescue ActiveRecord::RecordNotFound
      GraphQL::ExecutionError.new("Record not found")
    end
  end
end