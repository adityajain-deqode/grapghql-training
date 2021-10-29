module Types
  class MutationType < Types::BaseObject
    field :create_link, mutation: Mutations::CreateLink
    field :delete_link, mutation: Mutations::DeleteLink
    field :update_link, mutation: Mutations::UpdateLink
  end
end
