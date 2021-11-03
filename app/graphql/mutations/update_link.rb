module Mutations
  class UpdateLink < BaseMutation

    # arguments passed to the `resolve` method
    argument :description, String, required: false
    argument :url, String, required: false
    argument :id, Integer, required: true

    # return type from the mutation
    type Types::LinkType

    def resolve(id:, **args)
      Operations::LinkOperation::Update.new(link: Link.find(id)).call(args).value
    end
  end
end
