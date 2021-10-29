module Mutations
  class UpdateLink < BaseMutation

    # arguments passed to the `resolve` method
    argument :description, String, required: false
    argument :url, String, required: false
    argument :id, Integer, required: true

    # return type from the mutation
    type Types::LinkType

    def resolve(id:, **args)
      Link.find(id).tap do |link|
        link.update(args)
      end
    end
  end
end
