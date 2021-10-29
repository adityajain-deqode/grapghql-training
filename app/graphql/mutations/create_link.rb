module Mutations
  class CreateLink < BaseMutation
    # arguments passed to the `resolve` method
    argument :description, String, required: true
    argument :url, String, required: true

    # return type from the mutation
    type Types::LinkType

    def resolve(**args)
      Link.create(args)
    end
  end
end